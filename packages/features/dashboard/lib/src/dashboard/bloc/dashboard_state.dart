part of 'dashboard_bloc.dart';

@MappableClass()
class DashboardState with DashboardStateMappable {
  DashboardState({
    this.processState = ProcessState.loading,
    this.indexes,
    this.positionGroup = PositionGroup.attack,
    this.recentPlayers = const [],
    this.sbcPlayers = const [],
    this.attackPlayers = const [],
    this.midfielderPlayers = const [],
    this.defencePlayers = const [],
    this.goalKeeperPlayers = const [],
  });

  final ProcessState processState;
  final List<IndexData>? indexes;
  final PositionGroup? positionGroup;
  final List<Player> recentPlayers;
  final List<Player> sbcPlayers;
  final List<Player> attackPlayers;
  final List<Player> midfielderPlayers;
  final List<Player> defencePlayers;
  final List<Player> goalKeeperPlayers;
}
