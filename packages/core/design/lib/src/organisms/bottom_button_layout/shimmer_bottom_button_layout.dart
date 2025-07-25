import 'package:core_design/design.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBottomButtonLayout extends StatelessWidget {
  const ShimmerBottomButtonLayout({
    super.key,
    this.margin,
    this.count = 2,
  });

  final EdgeInsets? margin;
  final int count;

  @override
  Widget build(BuildContext context) {
    final shimmer = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
        color: const Color(0xffff0000),
      ),
      height: 36,
      width: 100,
    );
    final widgets = List<Widget>.empty(growable: true);
    List.generate(2, (index) {
      if (index != 0) {
        widgets.add(
          SizedBox(width: AppSpacing.space8),
        );
      }
      widgets.add(shimmer);
    });

    return Shimmer.fromColors(
      baseColor: context.colors.backgroundSecondary,
      highlightColor: context.colors.backgroundTertiary,
      child: Padding(
        padding: const EdgeInsets.only(
          left: AppSpacing.space5,
          right: AppSpacing.space5,
          top: AppSpacing.space5,
          bottom: AppSpacing.space8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: widgets,
        ),
      ),
    );
  }
}
