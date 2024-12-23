part of 'dashboard_bloc.dart';

@MappableClass()
class DashboardState with DashboardStateMappable {
  DashboardState({
    this.processState = ProcessState.loading,
    this.positionalPlayersProcessState = ProcessState.success,
    this.indexes,
    this.positionGroup = const Forwards(),
    this.raritySquad,
    this.raritySquadPlayers = const {},
    this.sbcPlayers = const [],
    this.attackPlayers = const [],
    this.midfielderPlayers = const [],
    this.defencePlayers = const [],
    this.goalKeeperPlayers = const [],
    this.showIcons = true,
  });

  final ProcessState processState;
  final ProcessState positionalPlayersProcessState;
  final List<IndexData>? indexes;
  final PositionGroup positionGroup;
  final RaritySquad? raritySquad;
  final Map<RaritySquad?, List<Player>?> raritySquadPlayers;
  final List<Player> sbcPlayers;
  final List<Player> attackPlayers;
  final List<Player> midfielderPlayers;
  final List<Player> defencePlayers;
  final List<Player> goalKeeperPlayers;
  final bool showIcons;
}
