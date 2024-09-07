import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:flutter/material.dart';

class StatsCardVertical extends StatelessWidget {
  const StatsCardVertical({
    super.key,
    required this.statItems,
    required this.heading,
  });

  final List<StatItem> statItems;
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
            borderRadius: mediumCorner.all,
            color: context.colors.backgroundFour,
          ),
          margin: spacingL.top,
          padding: spacingL.horizontal + spacingM.bottom + spacingXL.top,
          child: Column(
            children: statItems
                .map(
                  (statItem) => Padding(
                    padding: spacingXS.bottom,
                    child: StatH(
                      statItem: statItem,
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
