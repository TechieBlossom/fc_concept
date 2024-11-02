part of 'players_list_by_rating_bloc.dart';

@MappableClass()
class PlayersListByRatingState with PlayersListByRatingStateMappable {
  PlayersListByRatingState({
    this.processState = ProcessState.loading,
    this.rating = 90,
    this.players = const <Player>[],
    this.page = 0,
    this.isPaginating = false,
    this.hasReachedEnd = false,
  });

  final ProcessState processState;
  final int rating;
  final List<Player> players;
  final int page;
  final bool isPaginating;
  final bool hasReachedEnd;
}
