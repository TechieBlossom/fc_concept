import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:flutter/material.dart';

class StatsCardVertical extends StatelessWidget {
  const StatsCardVertical({
    super.key,
    required this.statItems,
    required this.heading,
  });

  final List<AttributeItem> statItems;
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 12 as the ornament height is 24 for compact, so half will be outside
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: context.colors.gold2,
            ),
            borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
            color: context.colors.backgroundFour,
          ),
          margin: const EdgeInsets.only(
            top: AppSpacing.space4,
          ),
          padding: const EdgeInsets.only(
            left: AppSpacing.space4,
            right: AppSpacing.space4,
            top: AppSpacing.space5,
            bottom: AppSpacing.space3,
          ),
          child: Column(
            children: statItems
                .map(
                  (statItem) => Padding(
                    padding: const EdgeInsets.only(
                      bottom: AppSpacing.space1,
                    ),
                    child: AttributeBar(
                      attributeItem: statItem,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        Positioned(
          top: 0,
          child: Ornament(
            label: heading,
            borderRadius: mediumCorner.top + mediumCorner.bottomRight,
            hasBorder: true,
          ),
        ),
      ],
    );
  }
}
