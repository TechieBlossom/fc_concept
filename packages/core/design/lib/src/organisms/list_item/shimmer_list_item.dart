import 'package:core_design/design.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerListItem extends StatelessWidget {
  const ShimmerListItem({
    super.key,
    this.margin,
  });

  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color(0xFFE3E3E3),
      highlightColor: const Color(0xFFF4F4F4),
      child: Padding(
        padding: spacingXL.horizontal + spacingM.vertical,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: mediumCorner.all,
            color: const Color(0xffff0000),
          ),
          height: 75,
          width: double.infinity,
        ),
      ),
    );
  }
}
