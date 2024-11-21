import 'package:core_domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_extensions/extensions.dart';

@injectable
class GetChemistryBoostFaceValuesGkUseCase {
  const GetChemistryBoostFaceValuesGkUseCase();

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
    final speed = 0.45 *
            (player.attributeSprintSpeed!.orZero() +
                (chemistryBoost.attributeSprintSpeed.orZero())) +
        0.55 *
            (player.attributeAcceleration!.orZero() +
                (chemistryBoost.attributeAcceleration.orZero()));

    final kicking = player.attributeGkKicking!.orZero() +
        (chemistryBoost.attributeGkKicking.orZero());

    final handling = player.attributeGkHandling!.orZero() +
        (chemistryBoost.attributeGkHandling.orZero());

    final reflexes = player.attributeGkReflexes!.orZero() +
        (chemistryBoost.attributeGkReflexes.orZero());

    final positioning = player.attributeGkPositioning!.orZero() +
        (chemistryBoost.attributeGkPositioning.orZero());

    final diving = player.attributeGkDiving!.orZero() +
        (chemistryBoost.attributeGkDiving.orZero());

    return (
      pace: (speed - player.gkFaceSpeed!.orZero()).round(),
      shooting: kicking - player.gkFaceSpeed!.orZero(),
      passing: handling - player.gkFaceHandling!.orZero(),
      dribbling: reflexes - player.gkFaceReflexes!.orZero(),
      defending: positioning - player.gkFacePositioning!.orZero(),
      physical: diving - player.gkFaceDiving!.orZero(),
    );
  }
}
