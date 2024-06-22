part of 'compare_bloc.dart';

@MappableClass(discriminatorKey: 'compareEvent')
abstract class CompareEvent with CompareEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends CompareEvent with InitMappable {
  Init({
    required this.player,
  });

  final Player player;
}

@MappableClass(discriminatorValue: 'selectPlayer')
class SelectPlayer extends CompareEvent with SelectPlayerMappable {
  SelectPlayer({
    required this.index,
  });

  final int index;
}

@MappableClass(discriminatorValue: 'selectVersion')
class SelectVersion extends CompareEvent with SelectVersionMappable {
  SelectVersion({
    required this.index,
    required this.playerId,
    required this.versionId,
    required this.version,
  });

  final int index;
  final int playerId;
  final int versionId;
  final String version;
}
