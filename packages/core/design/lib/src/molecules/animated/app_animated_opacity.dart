import 'package:flutter/material.dart';

class AppAnimatedOpacity<T> extends StatelessWidget {
  const AppAnimatedOpacity({
    super.key,
    required this.child,
    required this.isShown,
  });

  final Widget child;
  final bool isShown;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isShown ? 1 : 0,
      duration: const Duration(milliseconds: 400),
      child: child,
    );
  }
}