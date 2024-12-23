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
  });

  final int playerId;
}

@MappableClass(discriminatorValue: 'updateChemistryStyle')
class UpdateChemistryStyle extends PlayerDetailEvent
    with UpdateChemistryStyleMappable {
  UpdateChemistryStyle({
    required this.chemistryModifier,
    required this.chemistryStyle,
  });

  final int? chemistryModifier;
  final ChemistryStyle? chemistryStyle;
}

@MappableClass(discriminatorValue: 'clearChemistryStyle')
class ClearChemistryStyle extends PlayerDetailEvent
    with ClearChemistryStyleMappable {}

@MappableClass(discriminatorValue: 'loadRoles')
class LoadRoles extends PlayerDetailEvent with LoadRolesMappable {}

@MappableClass(discriminatorValue: 'loadPlayStyles')
class LoadPlayStyles extends PlayerDetailEvent with LoadPlayStylesMappable {}

@MappableClass(discriminatorValue: 'loadVersions')
class LoadVersions extends PlayerDetailEvent with LoadVersionsMappable {}

@MappableClass(discriminatorValue: 'loadPrice')
class LoadPrice extends PlayerDetailEvent with LoadPriceMappable {}

@MappableClass(discriminatorValue: 'loadAlternativePositions')
class LoadAlternativePositions extends PlayerDetailEvent
    with LoadAlternativePositionsMappable {}

@MappableClass(discriminatorValue: 'loadChemistryBoostFaceValues')
class LoadChemistryBoostFaceValues extends PlayerDetailEvent
    with LoadChemistryBoostFaceValuesMappable {}

@MappableClass(discriminatorValue: 'normalizeChemistryBoost')
class NormalizeChemistryBoost extends PlayerDetailEvent
    with NormalizeChemistryBoostMappable {}

@MappableClass(discriminatorValue: 'compareTap')
class CompareTap extends PlayerDetailEvent with CompareTapMappable {}

@MappableClass(discriminatorValue: 'roleTap')
class RoleTap extends PlayerDetailEvent with RoleTapMappable {
  RoleTap({
    required this.role,
  });

  final Role role;
}

@MappableClass(discriminatorValue: 'playStyleTap')
class PlayStyleTap extends PlayerDetailEvent with PlayStyleTapMappable {
  PlayStyleTap({
    required this.playStyle,
  });

  final PlayStyle playStyle;
}

@MappableClass(discriminatorValue: 'accelerateTap')
class AccelerateTap extends PlayerDetailEvent with AccelerateTapMappable {
  AccelerateTap({
    required this.accelerateType,
  });

  final AccelerateType accelerateType;
}

@MappableClass(discriminatorValue: 'chemistryTap')
class ChemistryTap extends PlayerDetailEvent with ChemistryTapMappable {}

@MappableClass(discriminatorValue: 'chemistryApply')
class ChemistryApply extends PlayerDetailEvent with ChemistryApplyMappable {
  ChemistryApply({
    required this.chemistryStyle,
    required this.chemistryModifier,
  });

  final ChemistryStyle chemistryStyle;
  final int chemistryModifier;
}

@MappableClass(discriminatorValue: 'rarityTap')
class RarityTap extends PlayerDetailEvent with RarityTapMappable {
  RarityTap({
    required this.params,
  });

  final PlayerCollectionPageParams params;
}

@MappableClass(discriminatorValue: 'allPlayersTap')
class AllPlayersTap extends PlayerDetailEvent with AllPlayersTapMappable {
  AllPlayersTap({
    required this.type,
  });

  final AllPlayerTapType type;
}
