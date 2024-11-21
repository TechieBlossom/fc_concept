import 'package:core_domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_extensions/extensions.dart';

// TODO: Check for calculations again.
// Tel and some other players are not calculated correctly

typedef ChemistryBoostFaceValues = ({
  /// Speed for GK
  int pace,

  /// Kicking for GK
  int shooting,

  /// Handling for GK
  int passing,

  /// Reflexes for GK
  int dribbling,

  /// Positioning for GK
  int defending,

  /// Diving for GK
  int physical,
});

@injectable
class GetChemistryBoostFaceValuesUseCase {
  const GetChemistryBoostFaceValuesUseCase();

  ChemistryBoostFaceValues call(
    Player player,
    ChemistryModifier? chemistryBoost,
  ) {
    if (chemistryBoost == null) {
      return (
        pace: 0,
        shooting: 0,
        passing: 0,
        dribbling: 0,
        defending: 0,
        physical: 0,
      );
    }
    final pace = 0.55 *
            (player.attributeSprintSpeed!.orZero() +
                (chemistryBoost.attributeSprintSpeed.orZero())) +
        0.45 *
            (player.attributeAcceleration!.orZero() +
                (chemistryBoost.attributeAcceleration.orZero()));

    final shooting = 0.45 *
            (player.attributeFinishing!.orZero() +
                (chemistryBoost.attributeFinishing.orZero())) +
        0.20 *
            (player.attributeLongShots!.orZero() +
                (chemistryBoost.attributeLongShots.orZero())) +
        0.05 *
            (player.attributePenalties!.orZero() +
                (chemistryBoost.attributePenalties.orZero())) +
        0.20 *
            (player.attributeShotPower!.orZero() +
                (chemistryBoost.attributeShotPower.orZero())) +
        0.05 *
            (player.attributePositioning!.orZero() +
                (chemistryBoost.attributePositioning.orZero())) +
        0.05 *
            (player.attributeVolleys!.orZero() +
                (chemistryBoost.attributeVolleys.orZero()));

    final passing = 0.05 *
            (player.attributeVision!.orZero() +
                (chemistryBoost.attributeVision.orZero())) +
        0.20 *
            (player.attributeCrossing!.orZero() +
                (chemistryBoost.attributeCrossing.orZero())) +
        0.35 *
            (player.attributeShortPassing!.orZero() +
                (chemistryBoost.attributeShortPassing.orZero())) +
        0.15 *
            (player.attributeLongPassing!.orZero() +
                (chemistryBoost.attributeLongPassing.orZero())) +
        0.05 *
            (player.attributeFkAccuracy!.orZero() +
                (chemistryBoost.attributeFkAccuracy.orZero())) +
        0.20 *
            (player.attributeCurve!.orZero() +
                (chemistryBoost.attributeCurve.orZero()));

    final dribbling = 0.10 *
            (player.attributeAgility!.orZero() +
                (chemistryBoost.attributeAgility.orZero())) +
        0.05 *
            (player.attributeBalance!.orZero() +
                (chemistryBoost.attributeBalance.orZero())) +
        0.00 *
            (player.attributeReactions!.orZero() +
                (chemistryBoost.attributeReactions.orZero())) +
        0.35 *
            (player.attributeBallControl!.orZero() +
                (chemistryBoost.attributeBallControl.orZero())) +
        0.50 *
            (player.attributeDribbling!.orZero() +
                (chemistryBoost.attributeDribbling.orZero())) +
        0.00 *
            (player.attributeComposure!.orZero() +
                (chemistryBoost.attributeComposure.orZero()));

    final defending = 0.20 *
            (player.attributeInterceptions!.orZero() +
                (chemistryBoost.attributeInterceptions.orZero())) +
        0.10 *
            (player.attributeHeadingAccuracy!.orZero() +
                (chemistryBoost.attributeHeadingAccuracy.orZero())) +
        0.30 *
            (player.attributeStandingTackle!.orZero() +
                (chemistryBoost.attributeStandingTackle.orZero())) +
        0.30 *
            (player.attributeDefensiveAwareness!.orZero() +
                (chemistryBoost.attributeDefensiveAwareness.orZero())) +
        0.10 *
            (player.attributeSlidingTackle!.orZero() +
                (chemistryBoost.attributeSlidingTackle.orZero()));

    final physical = 0.05 *
            (player.attributeJumping!.orZero() +
                (chemistryBoost.attributeJumping.orZero())) +
        0.25 *
            (player.attributeStamina!.orZero() +
                (chemistryBoost.attributeStamina.orZero())) +
        0.50 *
            (player.attributeStrength!.orZero() +
                (chemistryBoost.attributeStrength.orZero())) +
        0.20 *
            (player.attributeAggression!.orZero() +
                (chemistryBoost.attributeAggression.orZero()));

    return (
      pace: (pace - player.facePace!.orZero()).round(),
      shooting: (shooting - player.faceShooting!.orZero()).round(),
      passing: (passing - player.facePassing!.orZero()).round(),
      dribbling: (dribbling - player.faceDribbling.orZero()).round(),
      defending: (defending - player.faceDefending!.orZero()).round(),
      physical: (physical - player.facePhysicality!.orZero()).round(),
    );
  }
}
