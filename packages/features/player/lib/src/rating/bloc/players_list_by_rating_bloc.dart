import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_player/src/navigation/navigator.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

part 'players_list_by_rating_bloc.mapper.dart';
part 'players_list_by_rating_event.dart';
part 'players_list_by_rating_state.dart';

const _duration = Duration(milliseconds: 50);

@injectable
class PlayersListByRatingBloc
    extends Bloc<PlayersListByRatingEvent, PlayersListByRatingState> {
  PlayersListByRatingBloc(
    this._getCheapestPlayersByRatingUseCase,
    this._navigator,
  ) : super(PlayersListByRatingState()) {
    on<ChangeRating>((event, emit) => _onChangeRating(event, emit));
    on<NextPage>(_nextPage, transformer: debounce(_duration));
    on<PlayerTap>(
      (event, _) async => _navigator.goToPlayerDetail(event.player),
    );

    add(ChangeRating(rating: 90));
  }

  final GetCheapestPlayersByRatingUseCase _getCheapestPlayersByRatingUseCase;
  final PlayerNavigator _navigator;

  Future<void> _onChangeRating(
    ChangeRating event,
    Emitter<PlayersListByRatingState> emit,
  ) async {
    emit(
      state.copyWith(
        processState: ProcessState.loading,
        players: [],
        rating: event.rating,
        hasReachedEnd: false,
        isPaginating: false,
        page: 0,
      ),
    );
    final players = await _getCheapestPlayersByRatingUseCase(
      rating: event.rating,
    );
    _handleSuccess(emit, players);
  }

  Future<void> _nextPage(
    NextPage event,
    Emitter<PlayersListByRatingState> emit,
  ) async {
    if (state.hasReachedEnd) {
      return;
    }
    emit(state.copyWith(isPaginating: true, page: state.page + 1));
    final newPlayers = await _getCheapestPlayersByRatingUseCase(
      rating: state.rating,
      page: state.page,
    );
    if (newPlayers?.isNotEmpty ?? false) {
      final players = List<Player>.from(state.players)..addAll(newPlayers!);
      _handleSuccess(emit, players);
    } else {
      emit(state.copyWith(isPaginating: false, hasReachedEnd: true));
    }
  }

  void _handleSuccess(
    Emitter<PlayersListByRatingState> emit,
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
