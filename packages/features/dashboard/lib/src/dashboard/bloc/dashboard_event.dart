part of 'dashboard_bloc.dart';

@MappableClass(discriminatorKey: 'event')
abstract class DashboardEvent with DashboardEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends DashboardEvent with InitMappable {}

@MappableClass(discriminatorValue: 'updatePlayerPrices')
class UpdatePlayerPrices extends DashboardEvent
    with UpdatePlayerPricesMappable {
  UpdatePlayerPrices({
    required this.playerGroup,
  });

  final PlayerGroup playerGroup;
}

@MappableClass(discriminatorValue: 'switchHighRatedPositionGroup')
class SwitchHighRatedPositionGroup extends DashboardEvent
    with SwitchHighRatedPositionGroupMappable {
  SwitchHighRatedPositionGroup({
    this.positionGroup,
  });

  final PositionGroup? positionGroup;
}

@MappableClass(discriminatorValue: 'switchRaritySquad')
class SwitchRaritySquad extends DashboardEvent with SwitchRaritySquadMappable {
  SwitchRaritySquad({
    this.raritySquad,
  });

  final RaritySquad? raritySquad;
}

@MappableClass(discriminatorValue: 'playerTap')
class PlayerTap extends DashboardEvent with PlayerTapMappable {
  PlayerTap({
    required this.player,
    this.fromSbc = false,
  });

  final Player player;
  final bool fromSbc;
}

@MappableClass(discriminatorValue: 'searchTap')
class SearchTap extends DashboardEvent with SearchTapMappable {}

@MappableClass(discriminatorValue: 'cheapestPlayerByRatingTap')
class CheapestByPlayerRatingTap extends DashboardEvent
    with CheapestByPlayerRatingTapMappable {}

@MappableClass(discriminatorValue: 'indexTap')
class IndexTap extends DashboardEvent with IndexTapMappable {
  IndexTap({
    required this.indexType,
  });

  final IndexType indexType;
}

@MappableClass(discriminatorValue: 'toggleIcons')
class ToggleIcons extends DashboardEvent with ToggleIconsMappable {}
