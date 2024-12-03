import 'package:core_analytics/analytics.dart';
import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_player/src/navigation/navigator.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

part 'player_list_bloc.mapper.dart';

part 'player_list_event.dart';

part 'player_list_state.dart';

const _duration = Duration(milliseconds: 10);

@injectable
class PlayerListBloc extends Bloc<PlayerListEvent, PlayerListState> {
  PlayerListBloc(
    this._getTopPlayerUseCase,
    this._filterPlayersUseCase,
    this._logEventUseCase,
    this._navigator,
  ) : super(PlayerListState()) {
    on<Init>((event, emit) => _initial(event, emit));
    on<Search>(_search, transformer: debounce(_duration));
    on<NextPage>(_nextPage, transformer: debounce(_duration));
    on<PlayerTap>((event, _) => _playerTap(event));
    on<FilterTap>((_, emit) => _filter(emit));

    add(Init());
  }

  final GetTopPlayerUseCase _getTopPlayerUseCase;
  final FilterPlayersUseCase _filterPlayersUseCase;
  final LogEventUseCase _logEventUseCase;
  final PlayerNavigator _navigator;

  @override
  Object onEvent(PlayerListEvent event) {
    super.onEvent(event);
    return switch (event) {
      PlayerTap() => _logEventUseCase(
          name: AnalyticsEventName.playerListPlayerTap,
          parameters: event.player.analyticsParameters,
        ),
      FilterTap() => _logEventUseCase(
          name: AnalyticsEventName.playerListFilterTap,
        ),
      _ => {},
    };
  }

  Future<void> _initial(
    Init event,
    Emitter<PlayerListState> emit,
  ) async {
    emit(state.copyWith(processState: ProcessState.loading));
    final response = await _getTopPlayerUseCase();
    switch (response) {
      case Success(data: final players):
        _handleSuccess(emit, players);
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }
  }

  Future<void> _search(
    Search event,
    Emitter<PlayerListState> emit,
  ) async {
    if (event.query.isNotEmpty) {
      unawaited(
        _logEventUseCase(
          name: AnalyticsEventName.playerListSearch,
          parameters: {'query': event.query},
        ),
      );
    }
    emit(
      state.copyWith(
        processState: ProcessState.loading,
        page: 0,
        filterConfiguration: state.filterConfiguration == null
            ? FilterConfiguration(searchQuery: event.query)
            : state.filterConfiguration?.copyWith(
                searchQuery: event.query,
              ),
      ),
    );

    if (event.query.isEmpty) {
      add(Init());
    }

    final response = await _filterPlayersUseCase(
      filterConfiguration: state.filterConfiguration,
      page: state.page,
    );
    switch (response) {
      case Success(data: final players):
        _handleSuccess(emit, players);
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }
  }

  Future<void> _nextPage(
    NextPage event,
    Emitter<PlayerListState> emit,
  ) async {
    emit(state.copyWith(isPaginating: true, page: state.page + 1));
    Result<List<Player>?> response;
    if (state.filterConfiguration != null) {
      response = await _filterPlayersUseCase(
        page: state.page,
        filterConfiguration: state.filterConfiguration,
      );
    } else {
      response = await _getTopPlayerUseCase(
        page: state.page,
      );
    }

    switch (response) {
      case Success(data: final newPlayers):
        {
          if (newPlayers?.isNotEmpty ?? false) {
            final players = List<Player>.from(state.players ?? [])
              ..addAll(newPlayers!);
            _handleSuccess(emit, players);
          } else {
            emit(state.copyWith(isPaginating: false, hasReachedEnd: true));
          }
        }
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }
  }

  Future<void> _playerTap(PlayerTap event) async {
    if (event.resultWithSelection) {
      return _navigator.goBack(event.player);
    } else {
      return _navigator.goToPlayerDetail(event.player);
    }
  }

  Future<void> _filter(Emitter<PlayerListState> emit) async {
    final filterConfiguration =
        await _navigator.goToFilter(state.filterConfiguration);
    if (filterConfiguration != null) {
      emit(
        state.copyWith(
          processState: ProcessState.loading,
          filterConfiguration: filterConfiguration.copyWith(
            searchQuery: state.filterConfiguration?.searchQuery,
          ),
        ),
      );
      final response = await _filterPlayersUseCase(
        filterConfiguration: state.filterConfiguration,
      );
      switch (response) {
        case Success(data: final players):
          _handleSuccess(emit, players);
        case Failure(exception: final exception):
          if (kDebugMode) {
            print(exception);
          }
      }
    }
  }

  void _handleSuccess(Emitter<PlayerListState> emit, List<Player>? players) {
    if (kDebugMode) {
      print('page ${state.page}');
    }
    emit(
      state.copyWith(
        processState: (players?.isNotEmpty ?? false)
            ? ProcessState.success
            : ProcessState.empty,
        players: players,
        isPaginating: false,
      ),
    );
  }
}
