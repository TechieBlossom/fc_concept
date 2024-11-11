import 'package:core_design/design.dart';
import 'package:core_design/src/molecules/attribute/accelrate_bar.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:utility_extensions/extensions.dart';

class AttributesLayout extends StatelessWidget {
  const AttributesLayout({
    super.key,
    required this.player,
    required this.chemistryBoost,
    required this.chemistryBoostFaceValues,
    required this.chemistryStyleAccelerate,
  });

  final Player player;
  final ChemistryModifier? chemistryBoost;
  final ChemistryBoostFaceValues? chemistryBoostFaceValues;
  final AccelerateType? chemistryStyleAccelerate;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    _FaceAttribute(
                      attributeItem: AttributeItem(
                        attribute: 'Pace',
                        rating: player.facePace!.orZero(),
                        boost: chemistryBoostFaceValues?.pace,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Acceleration',
                        rating: player.attributeAcceleration!.orZero(),
                        boost: chemistryBoost?.attributeAcceleration,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Sprint Speed',
                        rating: player.attributeSprintSpeed!.orZero(),
                        boost: chemistryBoost?.attributeSprintSpeed,
                      ),
                    ),
                    if (player.accelerateType != null)
                      AccelerateBar(
                        accelerateType: player.accelerateType!,
                        chemistryStyleAccelerate: chemistryStyleAccelerate,
                      ),
                  ].intersperse(Space(space: AppSpacing.space2)).toList(),
                ),
              ),
              const Space(
                space: AppSpacing.space4,
                orientation: Axis.horizontal,
              ),
              Expanded(
                child: Column(
                  children: [
                    _FaceAttribute(
                      attributeItem: AttributeItem(
                        attribute: 'Shooting',
                        rating: player.faceShooting!.orZero(),
                        boost: chemistryBoostFaceValues?.shooting,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Att. Position',
                        rating: player.attributePositioning!.orZero(),
                        boost: chemistryBoost?.attributePositioning,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Finishing',
                        rating: player.attributeFinishing!.orZero(),
                        boost: chemistryBoost?.attributeFinishing,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Shot Power',
                        rating: player.attributeShotPower!.orZero(),
                        boost: chemistryBoost?.attributeShotPower,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Long Shots',
                        rating: player.attributeLongShots!.orZero(),
                        boost: chemistryBoost?.attributeLongShots,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Volleys',
                        rating: player.attributeVolleys!.orZero(),
                        boost: chemistryBoost?.attributeVolleys,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Penalties',
                        rating: player.attributePenalties!.orZero(),
                        boost: chemistryBoost?.attributePenalties,
                      ),
                    ),
                  ].intersperse(Space(space: AppSpacing.space2)).toList(),
                ),
              ),
            ],
          ),
        ),
        const Space(space: AppSpacing.space6),
        Flexible(
          fit: FlexFit.loose,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    _FaceAttribute(
                      attributeItem: AttributeItem(
                        attribute: 'Passing',
                        rating: player.facePassing!.orZero(),
                        boost: chemistryBoostFaceValues?.passing,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Vision',
                        rating: player.attributeVision!.orZero(),
                        boost: chemistryBoost?.attributeVision,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Crossing',
                        rating: player.attributeCrossing!.orZero(),
                        boost: chemistryBoost?.attributeCrossing,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'FK. Acc.',
                        rating: player.attributeFkAccuracy!.orZero(),
                        boost: chemistryBoost?.attributeFkAccuracy,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Short Pass',
                        rating: player.attributeShortPassing!.orZero(),
                        boost: chemistryBoost?.attributeShortPassing,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Long Pass',
                        rating: player.attributeLongPassing!.orZero(),
                        boost: chemistryBoost?.attributeLongPassing,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Curve',
                        rating: player.attributeCurve!.orZero(),
                        boost: chemistryBoost?.attributeCurve,
                      ),
                    ),
                  ].intersperse(Space(space: AppSpacing.space2)).toList(),
                ),
              ),
              const Space(
                space: AppSpacing.space4,
                orientation: Axis.horizontal,
              ),
              Expanded(
                child: Column(
                  children: [
                    _FaceAttribute(
                      attributeItem: AttributeItem(
                        attribute: 'Dribbling',
                        rating: player.faceDribbling!.orZero(),
                        boost: chemistryBoostFaceValues?.dribbling,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Agility',
                        rating: player.attributeAgility!.orZero(),
                        boost: chemistryBoost?.attributeAgility,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Balance',
                        rating: player.attributeBalance!.orZero(),
                        boost: chemistryBoost?.attributeBalance,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Reactions',
                        rating: player.attributeReactions!.orZero(),
                        boost: chemistryBoost?.attributeReactions,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Ball Control',
                        rating: player.attributeBallControl!.orZero(),
                        boost: chemistryBoost?.attributeBallControl,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Dribbling',
                        rating: player.attributeDribbling!.orZero(),
                        boost: chemistryBoost?.attributeDribbling,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Composure',
                        rating: player.attributeComposure!.orZero(),
                        boost: chemistryBoost?.attributeComposure,
                      ),
                    ),
                  ].intersperse(Space(space: AppSpacing.space2)).toList(),
                ),
              ),
            ],
          ),
        ),
        const Space(space: AppSpacing.space6),
        Flexible(
          fit: FlexFit.loose,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    _FaceAttribute(
                      attributeItem: AttributeItem(
                        attribute: 'Defending',
                        rating: player.faceDefending!.orZero(),
                        boost: chemistryBoostFaceValues?.defending,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Interceptions',
                        rating: player.attributeInterceptions!.orZero(),
                        boost: chemistryBoost?.attributeInterceptions,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Heading Acc.',
                        rating: player.attributeHeadingAccuracy!.orZero(),
                        boost: chemistryBoost?.attributeHeadingAccuracy,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Def. Aware',
                        rating: player.attributeDefensiveAwareness!.orZero(),
                        boost: chemistryBoost?.attributeDefensiveAwareness,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Stand Tackle',
                        rating: player.attributeStandingTackle!.orZero(),
                        boost: chemistryBoost?.attributeStandingTackle,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Slide Tackle',
                        rating: player.attributeSlidingTackle!.orZero(),
                        boost: chemistryBoost?.attributeSlidingTackle,
                      ),
                    ),
                  ].intersperse(Space(space: AppSpacing.space2)).toList(),
                ),
              ),
              const Space(
                space: AppSpacing.space4,
                orientation: Axis.horizontal,
              ),
              Expanded(
                child: Column(
                  children: [
                    _FaceAttribute(
                      attributeItem: AttributeItem(
                        attribute: 'Physicality',
                        rating: player.facePhysicality!.orZero(),
                        boost: chemistryBoostFaceValues?.physical,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Jumping',
                        rating: player.attributeJumping!.orZero(),
                        boost: chemistryBoost?.attributeJumping,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Stamina',
                        rating: player.attributeStamina!.orZero(),
                        boost: chemistryBoost?.attributeStamina,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Strength',
                        rating: player.attributeStrength!.orZero(),
                        boost: chemistryBoost?.attributeStrength,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Aggression',
                        rating: player.attributeAggression!.orZero(),
                        boost: chemistryBoost?.attributeAggression,
                      ),
                    ),
                  ].intersperse(Space(space: AppSpacing.space2)).toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _FaceAttribute extends StatelessWidget {
  const _FaceAttribute({
    required this.attributeItem,
  });

  final AttributeItem attributeItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.space1),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Text(
              attributeItem.attribute,
              textAlign: TextAlign.start,
              style: context.typography.subHead.copyWith(
                color: context.colors.contentPrimary,
              ),
            ),
          ),
          if (attributeItem.boost != null && attributeItem.boost != 0) ...[
            Text(
              '+${attributeItem.boost}',
              style: context.typography.caption2.copyWith(
                color: attributeItem.lightRatingColor,
              ),
            ),
            const SizedBox(width: AppSpacing.space3),
          ],
          Container(
            padding: EdgeInsetsDirectional.only(
              start: AppSpacing.space1,
              end: AppSpacing.space1,
              top: 1,
              bottom: 2.5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppCornerRadius.radius1),
              color: attributeItem.lightRatingColor,
              border: Border.all(
                color: attributeItem.ratingColor,
                width: 1,
              ),
            ),
            child: Text(
              '${attributeItem.rating + (attributeItem.boost?.orZero() ?? 0)}',
              style: context.typography.body5.copyWith(
                color: attributeItem.ratingColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
