import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:utility_extensions/extensions.dart';

class GkAttributesLayout extends StatelessWidget {
  const GkAttributesLayout({
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
                        attribute: 'Speed',
                        rating: player.gkFaceSpeed!.orZero(),
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
                        attribute: 'Diving',
                        rating: player.gkFaceDiving!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Diving',
                        rating: player.attributeGkDiving!.orZero(),
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
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Kicking',
                        rating: player.attributeGkKicking!.orZero(),
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
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Handling',
                        rating: player.attributeGkHandling!.orZero(),
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
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Reflexes',
                        rating: player.attributeGkReflexes!.orZero(),
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Reactions',
                        rating: player.attributeReactions!.orZero(),
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
                      ),
                    ),
                    AttributeBar(
                      attributeItem: AttributeItem(
                        attribute: 'Positioning',
                        rating: player.gkFacePositioning!.orZero(),
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
