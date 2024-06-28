import 'dart:ui';

import 'package:flutter/material.dart';

enum GlassBlur { less, medium }

class Glass extends StatelessWidget {
  const Glass({
    super.key,
    required this.child,
    this.blur = 30,
    this.borderRadius,
  });

  factory Glass.mediumBlur({
    required Widget child,
    BorderRadius? borderRadius,
  }) {
    return Glass(
      borderRadius: borderRadius,
      blur: 60,
      child: child,
    );
  }

  factory Glass.lessBlur({
    required Widget child,
    BorderRadius? borderRadius,
  }) {
    return Glass(
      borderRadius: borderRadius,
      child: child,
    );
  }

  final BorderRadius? borderRadius;
  final Widget child;
  final double blur;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: child,
      ),
    );
  }
}
