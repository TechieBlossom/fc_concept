import 'package:core_design/design.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerChartItem extends StatelessWidget {
  const ShimmerChartItem({
    super.key,
    this.margin,
  });

  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Shimmer.fromColors(
        baseColor: context.colors.backgroundSecondary,
        highlightColor: context.colors.backgroundTertiary,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.space5,
            vertical: AppSpacing.space2,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
              color: const Color(0xffff0000),
            ),
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
