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
        borderRadius: mediumCorner.all,
        color: const Color(0xffff0000),
      ),
      height: 36,
      width: 100,
    );
    final widgets = List<Widget>.empty(growable: true);
    List.generate(2, (index) {
      if (index != 0) {
        widgets.add(
          SizedBox(width: spacingXXXL.value),
        );
      }
      widgets.add(shimmer);
    });

    return Shimmer.fromColors(
      baseColor: const Color(0xFFE3E3E3),
      highlightColor: const Color(0xFFF4F4F4),
      child: Padding(
        padding: spacingXL.all + spacingM.bottom,
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
