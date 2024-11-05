import 'package:core_design/design.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerFilterGroup extends StatelessWidget {
  const ShimmerFilterGroup({
    super.key,
    this.margin,
  });

  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.colors.backgroundSecondary,
      highlightColor: context.colors.backgroundTertiary,
      child: Padding(
        padding: margin ?? const EdgeInsets.all(AppSpacing.space5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
                color: const Color(0xffff0000),
              ),
              height: 20,
              width: 100,
            ),
            SizedBox(height: AppSpacing.space3),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
                color: const Color(0xffff0000),
              ),
              height: 75,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
