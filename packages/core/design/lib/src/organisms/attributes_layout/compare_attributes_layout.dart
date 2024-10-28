import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class CompareAttributesLayout extends StatelessWidget {
  const CompareAttributesLayout({
    super.key,
    required this.player1,
    required this.player2,
  });

  final Player player1;
  final Player player2;

  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink();
    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: AppSpacing.space3),
    //   child: Column(
    //     children: [
    //       Row(
    //         children: [
    //           Expanded(
    //             child: Column(
    //               children: [
    //                 _FaceAttribute(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Pace',
    //                     rating: player1.facePace!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Acceleration',
    //                     rating: player1.attributeAcceleration!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Sprint Speed',
    //                     rating: player1.attributeSprintSpeed!.orZero(),
    //                   ),
    //                 ),
    //               ].intersperse(Space(space: AppSpacing.space2)).toList(),
    //             ),
    //           ),
    //           const Space(
    //               space: AppSpacing.space5, orientation: Axis.horizontal),
    //           Expanded(
    //             child: Column(
    //               children: [
    //                 _FaceAttribute(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Pace',
    //                     rating: player2.facePace!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Acceleration',
    //                     rating: player2.attributeAcceleration!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Sprint Speed',
    //                     rating: player2.attributeSprintSpeed!.orZero(),
    //                   ),
    //                 ),
    //               ].intersperse(Space(space: AppSpacing.space2)).toList(),
    //             ),
    //           ),
    //         ],
    //       ),
    //       const Space(space: AppSpacing.space5),
    //       Row(
    //         children: [
    //           Expanded(
    //             child: Column(
    //                 children: [
    //               _FaceAttribute(
    //                 attributeItem: AttributeItem(
    //                   attribute: 'Shooting',
    //                   rating: player1.faceShooting!.orZero(),
    //                 ),
    //               ),
    //               AttributeBar(
    //                 attributeItem: AttributeItem(
    //                   attribute: 'Att. Position',
    //                   rating: player1.attributePositioning!.orZero(),
    //                 ),
    //               ),
    //               AttributeBar(
    //                 attributeItem: AttributeItem(
    //                   attribute: 'Finishing',
    //                   rating: player1.attributeFinishing!.orZero(),
    //                 ),
    //               ),
    //               AttributeBar(
    //                 attributeItem: AttributeItem(
    //                   attribute: 'Shot Power',
    //                   rating: player1.attributeShotPower!.orZero(),
    //                 ),
    //               ),
    //               AttributeBar(
    //                 attributeItem: AttributeItem(
    //                   attribute: 'Long Shots',
    //                   rating: player1.attributeLongShots!.orZero(),
    //                 ),
    //               ),
    //               AttributeBar(
    //                 attributeItem: AttributeItem(
    //                   attribute: 'Volleys',
    //                   rating: player1.attributeVolleys!.orZero(),
    //                 ),
    //               ),
    //               AttributeBar(
    //                 attributeItem: AttributeItem(
    //                   attribute: 'Penalties',
    //                   rating: player1.attributePenalties!.orZero(),
    //                 ),
    //               ),
    //             ].intersperse(Space(space: AppSpacing.space2)).toList()),
    //           ),
    //           const Space(
    //             space: AppSpacing.space5,
    //             orientation: Axis.horizontal,
    //           ),
    //           Expanded(
    //             child: Column(
    //               children: [
    //                 _FaceAttribute(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Shooting',
    //                     rating: player2.faceShooting!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Att. Position',
    //                     rating: player2.attributePositioning!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Finishing',
    //                     rating: player2.attributeFinishing!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Shot Power',
    //                     rating: player2.attributeShotPower!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Long Shots',
    //                     rating: player2.attributeLongShots!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Volleys',
    //                     rating: player2.attributeVolleys!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Penalties',
    //                     rating: player2.attributePenalties!.orZero(),
    //                   ),
    //                 ),
    //               ].intersperse(Space(space: AppSpacing.space2)).toList(),
    //             ),
    //           ),
    //         ],
    //       ),
    //       const Space(space: AppSpacing.space5),
    //       Row(
    //         children: [
    //           Expanded(
    //             child: Column(
    //               children: [
    //                 _FaceAttribute(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Passing',
    //                     rating: player1.facePassing!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Vision',
    //                     rating: player1.attributeVision!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Crossing',
    //                     rating: player1.attributeCrossing!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'FK. Acc.',
    //                     rating: player1.attributeFkAccuracy!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Short Pass',
    //                     rating: player1.attributeShortPassing!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Long Pass',
    //                     rating: player1.attributeLongPassing!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Curve',
    //                     rating: player1.attributeCurve!.orZero(),
    //                   ),
    //                 ),
    //               ].intersperse(Space(space: AppSpacing.space2)).toList(),
    //             ),
    //           ),
    //           const Space(
    //             space: AppSpacing.space5,
    //             orientation: Axis.horizontal,
    //           ),
    //           Expanded(
    //             child: Column(
    //               children: [
    //                 _FaceAttribute(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Passing',
    //                     rating: player2.facePassing!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Vision',
    //                     rating: player2.attributeVision!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Crossing',
    //                     rating: player2.attributeCrossing!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'FK. Acc.',
    //                     rating: player2.attributeFkAccuracy!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Short Pass',
    //                     rating: player2.attributeShortPassing!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Long Pass',
    //                     rating: player1.attributeLongPassing!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Curve',
    //                     rating: player1.attributeCurve!.orZero(),
    //                   ),
    //                 ),
    //               ].intersperse(Space(space: AppSpacing.space2)).toList(),
    //             ),
    //           ),
    //         ],
    //       ),
    //       const Space(space: AppSpacing.space5),
    //       Row(
    //         children: [
    //           Expanded(
    //             child: Column(
    //               children: [
    //                 _FaceAttribute(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Dribbling',
    //                     rating: player1.faceDribbling!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Agility',
    //                     rating: player1.attributeAgility!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Balance',
    //                     rating: player1.attributeBalance!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Reactions',
    //                     rating: player1.attributeReactions!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Ball Control',
    //                     rating: player1.attributeBallControl!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Dribbling',
    //                     rating: player1.attributeDribbling!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Composure',
    //                     rating: player1.attributeComposure!.orZero(),
    //                   ),
    //                 ),
    //               ].intersperse(Space(space: AppSpacing.space2)).toList(),
    //             ),
    //           ),
    //           const Space(
    //             space: AppSpacing.space5,
    //             orientation: Axis.horizontal,
    //           ),
    //           Expanded(
    //             child: Column(
    //               children: [
    //                 _FaceAttribute(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Dribbling',
    //                     rating: player2.faceDribbling!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Agility',
    //                     rating: player2.attributeAgility!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Balance',
    //                     rating: player2.attributeBalance!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Reactions',
    //                     rating: player2.attributeReactions!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Ball Control',
    //                     rating: player2.attributeBallControl!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Dribbling',
    //                     rating: player1.attributeDribbling!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Composure',
    //                     rating: player1.attributeComposure!.orZero(),
    //                   ),
    //                 ),
    //               ].intersperse(Space(space: AppSpacing.space2)).toList(),
    //             ),
    //           ),
    //         ],
    //       ),
    //       const Space(space: AppSpacing.space5),
    //       Row(
    //         children: [
    //           Expanded(
    //             child: Column(
    //               children: [
    //                 _FaceAttribute(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Defending',
    //                     rating: player1.faceDefending!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Interceptions',
    //                     rating: player1.attributeInterceptions!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Heading Acc.',
    //                     rating: player1.attributeHeadingAccuracy!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Def. Aware',
    //                     rating: player1.attributeDefensiveAwareness!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Stand Tackle',
    //                     rating: player1.attributeStandingTackle!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Slide Tackle',
    //                     rating: player1.attributeSlidingTackle!.orZero(),
    //                   ),
    //                 ),
    //               ].intersperse(Space(space: AppSpacing.space2)).toList(),
    //             ),
    //           ),
    //           const Space(
    //             space: AppSpacing.space5,
    //             orientation: Axis.horizontal,
    //           ),
    //           Expanded(
    //             child: Column(
    //               children: [
    //                 _FaceAttribute(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Defending',
    //                     rating: player2.faceDefending!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Interceptions',
    //                     rating: player2.attributeInterceptions!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Heading Acc.',
    //                     rating: player2.attributeHeadingAccuracy!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Def. Aware',
    //                     rating: player2.attributeDefensiveAwareness!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Stand Tackle',
    //                     rating: player2.attributeStandingTackle!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Slide Tackle',
    //                     rating: player2.attributeSlidingTackle!.orZero(),
    //                   ),
    //                 ),
    //               ].intersperse(Space(space: AppSpacing.space2)).toList(),
    //             ),
    //           ),
    //         ],
    //       ),
    //       const Space(space: AppSpacing.space5),
    //       Row(
    //         children: [
    //           Expanded(
    //             child: Column(
    //               children: [
    //                 _FaceAttribute(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Physicality',
    //                     rating: player1.facePhysicality!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Jumping',
    //                     rating: player1.attributeJumping!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Stamina',
    //                     rating: player1.attributeStamina!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Strength',
    //                     rating: player1.attributeStrength!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Aggression',
    //                     rating: player1.attributeAggression!.orZero(),
    //                   ),
    //                 ),
    //               ].intersperse(Space(space: AppSpacing.space2)).toList(),
    //             ),
    //           ),
    //           const Space(
    //             space: AppSpacing.space5,
    //             orientation: Axis.horizontal,
    //           ),
    //           Expanded(
    //             child: Column(
    //               children: [
    //                 _FaceAttribute(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Physicality',
    //                     rating: player2.facePhysicality!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Jumping',
    //                     rating: player2.attributeJumping!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Stamina',
    //                     rating: player2.attributeStamina!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Strength',
    //                     rating: player2.attributeStrength!.orZero(),
    //                   ),
    //                 ),
    //                 AttributeBar(
    //                   attributeItem: AttributeItem(
    //                     attribute: 'Aggression',
    //                     rating: player2.attributeAggression!.orZero(),
    //                   ),
    //                 ),
    //               ].intersperse(Space(space: AppSpacing.space2)).toList(),
    //             ),
    //           ),
    //         ],
    //       ),
    //       const Space(space: AppSpacing.space5),
    //     ],
    //   ),
    // );
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
