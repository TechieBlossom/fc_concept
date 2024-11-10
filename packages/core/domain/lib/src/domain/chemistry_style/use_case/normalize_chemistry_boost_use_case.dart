import 'package:core_domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_extensions/extensions.dart';

@injectable
class NormalizeChemistryBoostUseCase {
  const NormalizeChemistryBoostUseCase();

  ChemistryModifier? call(
    Player player,
    ChemistryModifier? chemistryBoost,
  ) {
    return ChemistryModifier(
      attributeAcceleration: _min(
        chemistryBoost?.attributeAcceleration,
        player.attributeAcceleration!,
      ),
      attributeAggression: _min(
        chemistryBoost?.attributeAggression,
        player.attributeAggression!,
      ),
      attributeAgility: _min(
        chemistryBoost?.attributeAgility,
        player.attributeAgility!,
      ),
      attributeBalance: _min(
        chemistryBoost?.attributeBalance,
        player.attributeBalance!,
      ),
      attributeBallControl: _min(
        chemistryBoost?.attributeBallControl,
        player.attributeBallControl!,
      ),
      attributeComposure: _min(
        chemistryBoost?.attributeComposure,
        player.attributeComposure!,
      ),
      attributeCrossing: _min(
        chemistryBoost?.attributeCrossing,
        player.attributeCrossing!,
      ),
      attributeCurve: _min(
        chemistryBoost?.attributeCurve,
        player.attributeCurve!,
      ),
      attributeDefensiveAwareness: _min(
        chemistryBoost?.attributeDefensiveAwareness,
        player.attributeDefensiveAwareness!,
      ),
      attributeDribbling: _min(
        chemistryBoost?.attributeDribbling,
        player.attributeDribbling!,
      ),
      attributeFinishing: _min(
        chemistryBoost?.attributeFinishing,
        player.attributeFinishing!,
      ),
      attributeFkAccuracy: _min(
        chemistryBoost?.attributeFkAccuracy,
        player.attributeFkAccuracy!,
      ),
      attributeHeadingAccuracy: _min(
        chemistryBoost?.attributeHeadingAccuracy,
        player.attributeHeadingAccuracy!,
      ),
      attributeInterceptions: _min(
        chemistryBoost?.attributeInterceptions,
        player.attributeInterceptions!,
      ),
      attributeJumping: _min(
        chemistryBoost?.attributeJumping,
        player.attributeJumping!,
      ),
      attributeLongPassing: _min(
        chemistryBoost?.attributeLongPassing,
        player.attributeLongPassing!,
      ),
      attributeLongShots: _min(
        chemistryBoost?.attributeLongShots,
        player.attributeLongShots!,
      ),
      attributePenalties: _min(
        chemistryBoost?.attributePenalties,
        player.attributePenalties!,
      ),
      attributePositioning: _min(
        chemistryBoost?.attributePositioning,
        player.attributePositioning!,
      ),
      attributeReactions: _min(
        chemistryBoost?.attributeReactions,
        player.attributeReactions!,
      ),
      attributeShortPassing: _min(
        chemistryBoost?.attributeShortPassing,
        player.attributeShortPassing!,
      ),
      attributeShotPower: _min(
        chemistryBoost?.attributeShotPower,
        player.attributeShotPower!,
      ),
      attributeSlidingTackle: _min(
        chemistryBoost?.attributeSlidingTackle,
        player.attributeSlidingTackle!,
      ),
      attributeSprintSpeed: _min(
        chemistryBoost?.attributeSprintSpeed,
        player.attributeSprintSpeed!,
      ),
      attributeStamina: _min(
        chemistryBoost?.attributeStamina,
        player.attributeStamina!,
      ),
      attributeStandingTackle: _min(
        chemistryBoost?.attributeStandingTackle,
        player.attributeStandingTackle!,
      ),
      attributeStrength: _min(
        chemistryBoost?.attributeStrength,
        player.attributeStrength!,
      ),
      attributeVision: _min(
        chemistryBoost?.attributeVision,
        player.attributeVision!,
      ),
      attributeVolleys: _min(
        chemistryBoost?.attributeVolleys,
        player.attributeVolleys!,
      ),
      attributeGkDiving: _min(
        chemistryBoost?.attributeGkDiving,
        player.attributeGkDiving!,
      ),
      attributeGkHandling: _min(
        chemistryBoost?.attributeGkHandling,
        player.attributeGkHandling!,
      ),
      attributeGkKicking: _min(
        chemistryBoost?.attributeGkKicking,
        player.attributeGkKicking!,
      ),
      attributeGkPositioning: _min(
        chemistryBoost?.attributeGkPositioning,
        player.attributeGkPositioning!,
      ),
      attributeGkReflexes: _min(
        chemistryBoost?.attributeGkReflexes,
        player.attributeGkReflexes!,
      ),
    );
  }

  // Other methods
  int _min(int? boost, int original) {
    if (boost != null && boost != 0) {
      if (boost.orZero() + original > 99) {
        final maxBoostPossible = 99 - original;
        return maxBoostPossible;
      }
    }
    return boost.orZero();
  }
}
