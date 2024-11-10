part of 'dashboard_bloc.dart';

@MappableClass()
class DashboardState with DashboardStateMappable {
  DashboardState({
    this.processState = ProcessState.loading,
    this.indexes,
    this.positionGroup = const Forwards(),
    this.raritySquad,
    this.raritySquadPlayers = const {},
    this.sbcPlayers = const [],
    this.attackPlayers = const [],
    this.midfielderPlayers = const [],
    this.defencePlayers = const [],
    this.goalKeeperPlayers = const [],
  });

  final ProcessState processState;
  final List<IndexData>? indexes;
  final PositionGroup positionGroup;
  final RaritySquad? raritySquad;
  final Map<RaritySquad?, List<Player>?> raritySquadPlayers;
  final List<Player> sbcPlayers;
  final List<Player> attackPlayers;
  final List<Player> midfielderPlayers;
  final List<Player> defencePlayers;
  final List<Player> goalKeeperPlayers;
}
