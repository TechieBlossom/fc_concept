import 'package:core_domain/domain.dart';
import 'package:feature_player/src/navigation/navigator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_transform/stream_transform.dart';

part 'player_list_bloc.freezed.dart';

part 'player_list_event.dart';

part 'player_list_state.dart';

const _duration = Duration(milliseconds: 200);

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

@injectable
class PlayerListBloc extends Bloc<PlayerListEvent, PlayerListState> {
  PlayerListBloc(
    this._getTopPlayerUseCase,
    this._searchPlayersUseCase,
    this._filterPlayersUseCase,
    this._navigator,
  ) : super(const PlayerListState()) {
    on<_Initial>(_initial);
    on<_Search>(_search, transformer: debounce(_duration));
    on<_NextPage>(_nextPage, transformer: debounce(_duration));
    on<_PlayerTap>((event, _) => _playerTap(event));
    on<_FilterTap>((_, emit) => _filter(emit));

    add(const PlayerListEvent.initial());
  }

  final GetTopPlayerUseCase _getTopPlayerUseCase;
  final SearchPlayersUseCase _searchPlayersUseCase;
  final FilterPlayersUseCase _filterPlayersUseCase;
  final PlayerNavigator _navigator;

  Future<void> _initial(
    _Initial event,
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
    _Search event,
    Emitter<PlayerListState> emit,
  ) async {
    if (event.query.isEmpty) {
      emit(state.copyWith(query: '', page: 0));
      add(const _Initial());
    }
    emit(
      state.copyWith(
        processState: ProcessState.loading,
        page: 0,
        query: event.query,
      ),
    );
    final response = await _searchPlayersUseCase(
      query: event.query,
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
    _NextPage event,
    Emitter<PlayerListState> emit,
  ) async {
    emit(state.copyWith(isPaginating: true, page: state.page + 1));
    Result<List<Player>?> response;
    if (state.filterConfiguration != null) {
      response = await _filterPlayersUseCase(
        page: state.page,
        filterConfiguration: state.filterConfiguration,
      );
    } else if (state.query.isEmpty) {
      response = await _getTopPlayerUseCase(
        page: state.page,
      );
    } else {
      response = await _searchPlayersUseCase(
        query: state.query,
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
          }
        }
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }
  }

  Future<void> _playerTap(_PlayerTap event) async {
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
          filterConfiguration: filterConfiguration,
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
