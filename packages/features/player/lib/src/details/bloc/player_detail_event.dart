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

@MappableClass(discriminatorValue: 'compareTap')
class CompareTap extends PlayerDetailEvent with CompareTapMappable {}
