import 'package:flutter/material.dart';

class AppAnimatedCrossFade<T> extends StatelessWidget {
  const AppAnimatedCrossFade({
    super.key,
    required this.child,
    required this.secondChild,
    required this.isShown,
  });

  final Widget child;
  final Widget secondChild;
  final bool isShown;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: child,
      secondChild: secondChild,
      crossFadeState:
          isShown ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 400),
    );
  }
}
