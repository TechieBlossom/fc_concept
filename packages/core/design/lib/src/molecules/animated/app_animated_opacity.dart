import 'package:flutter/material.dart';

class AppAnimatedOpacity<T> extends StatelessWidget {
  const AppAnimatedOpacity({
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
    return AnimatedOpacity(
      opacity: isShown ? 1 : 0,
      duration: const Duration(milliseconds: 400),
      child: child,
    );
    // return AnimatedCrossFade(
    //   firstChild: child,
    //   secondChild: secondChild,
    //   crossFadeState: isShown
    //       ? CrossFadeState.showFirst
    //       : CrossFadeState.showSecond,
    //   duration: const Duration(milliseconds: 400),
    // );
  }
}
