import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class FootImage extends StatelessWidget {
  const FootImage({
    super.key,
    required this.foot,
    required this.color,
  });

  final Foot foot;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return foot.isRight()
        ? AppAssets.icons.rightFoot.svg(
            width: 16,
            height: 16,
            colorFilter: ColorFilter.mode(
              color,
              BlendMode.srcIn,
            ),
          )
        : AppAssets.icons.leftFoot.svg(
            width: 16,
            height: 16,
            colorFilter: ColorFilter.mode(
              color,
              BlendMode.srcIn,
            ),
          );
  }
}
