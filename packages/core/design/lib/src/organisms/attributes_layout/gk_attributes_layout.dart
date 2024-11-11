import 'package:core_design/design.dart';
import 'package:core_design/src/molecules/attribute/accelrate_bar.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:utility_extensions/extensions.dart';

class GkAttributesLayout extends StatelessWidget {
  const GkAttributesLayout({
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
                        attribute: 'Speed',
                        rating: player.gkFaceSpeed!.orZero(),
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
                        attribute: 'Diving',
                        rating: player.gkFaceDiving!.orZero(),
                        boost: chemistryBoostFaceValues?.physical,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Diving',
                        rating: player.attributeGkDiving!.orZero(),
                        boost: chemistryBoost?.attributeGkDiving,
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
                        attribute: 'Kicking',
                        rating: player.gkFaceKicking!.orZero(),
                        boost: chemistryBoostFaceValues?.shooting,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Kicking',
                        rating: player.attributeGkKicking!.orZero(),
                        boost: chemistryBoost?.attributeGkKicking,
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
                        attribute: 'Handling',
                        rating: player.gkFaceHandling!.orZero(),
                        boost: chemistryBoostFaceValues?.passing,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Handling',
                        rating: player.attributeGkHandling!.orZero(),
                        boost: chemistryBoost?.attributeGkHandling,
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
                        attribute: 'Reflexes',
                        rating: player.gkFaceReflexes!.orZero(),
                        boost: chemistryBoostFaceValues?.dribbling,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Reflexes',
                        rating: player.attributeGkReflexes!.orZero(),
                        boost: chemistryBoost?.attributeGkReflexes,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Reactions',
                        rating: player.attributeReactions!.orZero(),
                        boost: chemistryBoost?.attributeReactions,
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
                        attribute: 'Positioning',
                        rating: player.gkFacePositioning!.orZero(),
                        boost: chemistryBoostFaceValues?.defending,
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Positioning',
                        rating: player.gkFacePositioning!.orZero(),
                        boost: chemistryBoost?.attributeGkPositioning,
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
