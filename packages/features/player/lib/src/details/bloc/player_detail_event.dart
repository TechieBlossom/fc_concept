part of 'player_detail_bloc.dart';

@MappableClass(discriminatorKey: 'playerDetailEvent')
abstract class PlayerDetailEvent with PlayerDetailEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends PlayerDetailEvent with InitMappable {
  Init({
    required this.player,
  });

  final Player player;
}

@MappableClass(discriminatorValue: 'versionTap')
class VersionTap extends PlayerDetailEvent with VersionTapMappable {
  VersionTap({
    required this.playerId,
    required this.versionId,
  });

  final int playerId;
  final int versionId;
}

@MappableClass(discriminatorValue: 'loadRoles')
class LoadRoles extends PlayerDetailEvent with LoadRolesMappable {}

@MappableClass(discriminatorValue: 'loadPlayStyles')
class LoadPlayStyles extends PlayerDetailEvent with LoadPlayStylesMappable {}

@MappableClass(discriminatorValue: 'loadVersions')
class LoadVersions extends PlayerDetailEvent with LoadVersionsMappable {}

@MappableClass(discriminatorValue: 'loadPrice')
class LoadPrice extends PlayerDetailEvent with LoadPriceMappable {}

@MappableClass(discriminatorValue: 'compareTap')
class CompareTap extends PlayerDetailEvent with CompareTapMappable {}
