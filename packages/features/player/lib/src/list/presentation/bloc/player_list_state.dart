part of 'player_list_bloc.dart';

@MappableClass()
class PlayerListState with PlayerListStateMappable {
  PlayerListState({
    this.processState = ProcessState.loading,
    this.query = '',
    this.isPaginating = false,
    this.page = 0,
    this.players,
    this.filterConfiguration,
  });

  final ProcessState processState;
  final String query;
  final bool isPaginating;
  final int page;
  final List<Player>? players;
  final FilterConfiguration? filterConfiguration;
}
