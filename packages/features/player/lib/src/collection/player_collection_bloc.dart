import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_player/src/collection/player_collection_page.dart';
import 'package:feature_player/src/navigation/navigator.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

part 'player_collection_bloc.mapper.dart';
part 'player_collection_event.dart';
part 'player_collection_state.dart';

const _duration = Duration(milliseconds: 10);

@injectable
class PlayerCollectionBloc
    extends Bloc<PlayerCollectionEvent, PlayerCollectionState> {
  PlayerCollectionBloc(
    @factoryParam this.params,
    this._getPlayerCollectionUseCase,
    this._navigator,
  ) : super(PlayerCollectionState(data: params.data)) {
    on<Init>((event, emit) => _initial(event, emit));
    on<Search>(_search, transformer: debounce(_duration));
    on<NextPage>(_nextPage, transformer: debounce(_duration));
    on<PlayerTap>((event, _) => _playerTap(event));

    add(Init());
  }

  final PlayerCollectionPageParams params;
  final GetPlayerCollectionUseCase _getPlayerCollectionUseCase;
  final PlayerNavigator _navigator;

  Future<void> _initial(
    Init event,
    Emitter<PlayerCollectionState> emit,
  ) async {
    emit(state.copyWith(processState: ProcessState.loading));
    final response = await _getPlayerCollectionUseCase(
      page: state.page,
      data: params.data,
      type: params.type,
      query: state.filterConfiguration?.searchQuery,
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

  Future<void> _search(
    Search event,
    Emitter<PlayerCollectionState> emit,
  ) async {
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

    final response = await _getPlayerCollectionUseCase(
      page: state.page,
      data: params.data,
      type: params.type,
      query: event.query,
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
    Emitter<PlayerCollectionState> emit,
  ) async {
    emit(state.copyWith(isPaginating: true, page: state.page + 1));
    final response = await _getPlayerCollectionUseCase(
      page: state.page,
      data: params.data,
      type: params.type,
      query: state.filterConfiguration?.searchQuery,
    );

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

  void _handleSuccess(
    Emitter<PlayerCollectionState> emit,
    List<Player>? players,
  ) {
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
