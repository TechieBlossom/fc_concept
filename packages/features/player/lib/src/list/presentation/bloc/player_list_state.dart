part of 'player_list_bloc.dart';

@MappableClass()
class PlayerListState with PlayerListStateMappable {
  PlayerListState({
    this.processState = ProcessState.loading,
    this.isPaginating = false,
    this.hasReachedEnd = false,
    this.page = 0,
    this.players,
    this.filterConfiguration,
  });

  final ProcessState processState;
  final bool isPaginating;
  final bool hasReachedEnd;
  final int page;
  final List<Player>? players;
  final FilterConfiguration? filterConfiguration;
}
