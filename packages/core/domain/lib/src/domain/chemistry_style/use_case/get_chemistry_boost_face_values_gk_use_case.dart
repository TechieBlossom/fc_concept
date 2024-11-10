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
    final speed = 0.45 *
            (player.attributeSprintSpeed!.orZero() +
                (chemistryBoost?.attributeSprintSpeed.orZero() ?? 0)) +
        0.55 *
            (player.attributeAcceleration!.orZero() +
                (chemistryBoost?.attributeAcceleration.orZero() ?? 0));

    final kicking = player.attributeGkKicking!.orZero() +
        (chemistryBoost?.attributeGkKicking.orZero() ?? 0);

    final handling = player.attributeGkHandling!.orZero() +
        (chemistryBoost?.attributeGkHandling.orZero() ?? 0);

    final reflexes = player.attributeGkReflexes!.orZero() +
        (chemistryBoost?.attributeGkReflexes.orZero() ?? 0);

    final positioning = player.attributeGkPositioning!.orZero() +
        (chemistryBoost?.attributeGkPositioning.orZero() ?? 0);

    final diving = player.attributeGkDiving!.orZero() +
        (chemistryBoost?.attributeGkDiving.orZero() ?? 0);

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
