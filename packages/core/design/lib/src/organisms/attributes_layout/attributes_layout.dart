import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:intersperse/intersperse.dart';
import 'package:utility_extensions/extensions.dart';

class AttributesLayout extends StatelessWidget {
  const AttributesLayout({
    super.key,
    required this.player,
  });

  final Player player;

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
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Acceleration',
                        rating: player.attributeAcceleration!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Sprint Speed',
                        rating: player.attributeSprintSpeed!.orZero(),
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
                        attribute: 'Shooting',
                        rating: player.faceShooting!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Att. Position',
                        rating: player.attributePositioning!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Finishing',
                        rating: player.attributeFinishing!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Shot Power',
                        rating: player.attributeShotPower!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Long Shots',
                        rating: player.attributeLongShots!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Volleys',
                        rating: player.attributeVolleys!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Penalties',
                        rating: player.attributePenalties!.orZero(),
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
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Vision',
                        rating: player.attributeVision!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Crossing',
                        rating: player.attributeCrossing!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'FK. Acc.',
                        rating: player.attributeFkAccuracy!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Short Pass',
                        rating: player.attributeShortPassing!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Long Pass',
                        rating: player.attributeLongPassing!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Curve',
                        rating: player.attributeCurve!.orZero(),
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
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Agility',
                        rating: player.attributeAgility!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Balance',
                        rating: player.attributeBalance!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Reactions',
                        rating: player.attributeReactions!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Ball Control',
                        rating: player.attributeBallControl!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Dribbling',
                        rating: player.attributeDribbling!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Composure',
                        rating: player.attributeComposure!.orZero(),
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
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Interceptions',
                        rating: player.attributeInterceptions!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Heading Acc.',
                        rating: player.attributeHeadingAccuracy!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Def. Aware',
                        rating: player.attributeDefensiveAwareness!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Stand Tackle',
                        rating: player.attributeStandingTackle!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Slide Tackle',
                        rating: player.attributeSlidingTackle!.orZero(),
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
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Jumping',
                        rating: player.attributeJumping!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Stamina',
                        rating: player.attributeStamina!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Strength',
                        rating: player.attributeStrength!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Aggression',
                        rating: player.attributeAggression!.orZero(),
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
              style: context.typography.subHead,
            ),
          ),
          Container(
            padding: EdgeInsets.all(AppSpacing.space1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppCornerRadius.radius1),
              color: attributeItem.lightRatingColor,
              border: Border.all(
                color: attributeItem.ratingColor,
                width: 1,
              ),
            ),
            child: Text(
              attributeItem.rating.toString(),
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
