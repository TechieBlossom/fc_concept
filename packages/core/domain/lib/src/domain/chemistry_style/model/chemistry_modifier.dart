import 'package:dart_mappable/dart_mappable.dart';

part 'chemistry_modifier.mapper.dart';

@MappableClass()
class ChemistryModifier with ChemistryModifierMappable {
  ChemistryModifier({
    required this.attributeCurve,
    required this.attributeVision,
    required this.attributeAgility,
    required this.attributeBalance,
    required this.attributeJumping,
    required this.attributeStamina,
    required this.attributeVolleys,
    required this.attributeCrossing,
    required this.attributeGkDiving,
    required this.attributeStrength,
    required this.attributeComposure,
    required this.attributeDribbling,
    required this.attributeFinishing,
    required this.attributeGkKicking,
    required this.attributeLongShots,
    required this.attributePenalties,
    required this.attributeReactions,
    required this.attributeShotPower,
    required this.attributeAggression,
    required this.attributeFkAccuracy,
    required this.attributeGkHandling,
    required this.attributeGkReflexes,
    required this.attributeBallControl,
    required this.attributeLongPassing,
    required this.attributePositioning,
    required this.attributeSprintSpeed,
    required this.attributeAcceleration,
    required this.attributeShortPassing,
    required this.attributeGkPositioning,
    required this.attributeInterceptions,
    required this.attributeSlidingTackle,
    required this.attributeStandingTackle,
    required this.attributeHeadingAccuracy,
    required this.attributeDefensiveAwareness,
  });

  final int attributeCurve;
  final int attributeVision;
  final int attributeAgility;
  final int attributeBalance;
  final int attributeJumping;
  final int attributeStamina;
  final int attributeVolleys;
  final int attributeCrossing;
  final int attributeGkDiving;
  final int attributeStrength;
  final int attributeComposure;
  final int attributeDribbling;
  final int attributeFinishing;
  final int attributeGkKicking;
  final int attributeLongShots;
  final int attributePenalties;
  final int attributeReactions;
  final int attributeShotPower;
  final int attributeAggression;
  final int attributeFkAccuracy;
  final int attributeGkHandling;
  final int attributeGkReflexes;
  final int attributeBallControl;
  final int attributeLongPassing;
  final int attributePositioning;
  final int attributeSprintSpeed;
  final int attributeAcceleration;
  final int attributeShortPassing;
  final int attributeGkPositioning;
  final int attributeInterceptions;
  final int attributeSlidingTackle;
  final int attributeStandingTackle;
  final int attributeHeadingAccuracy;
  final int attributeDefensiveAwareness;
}
