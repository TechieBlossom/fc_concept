import 'package:flutter/material.dart';

typedef AppTappableAnimationBuilder = Widget Function(
  Widget child,
  bool pressed,
);

class AppTappable extends StatefulWidget {
  const AppTappable({
    super.key,
    required this.child,
    this.animationBuilder,
    this.onTap,
  });

  final Widget child;
  final AppTappableAnimationBuilder? animationBuilder;
  final GestureTapCallback? onTap;

  @override
  State<AppTappable> createState() => _AppTappableState();
}

class _AppTappableState extends State<AppTappable> {
  final pressedNotifier = ValueNotifier(false);

  var _pressed = false;
  var _hovered = false;

  @override
  void dispose() {
    pressedNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.onTap == null) {
      return widget.child;
    }

    return MouseRegion(
      onEnter: (event) {
        _hovered = true;
        _updatePressedState();
      },
      onExit: (event) {
        _hovered = false;
        _updatePressedState();
      },
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: widget.onTap,
        onTapDown: (details) {
          _pressed = true;
          _updatePressedState();
        },
        onTapUp: (details) {
          _pressed = false;
          _updatePressedState();
        },
        onTapCancel: () {
          _pressed = false;
          _updatePressedState();
        },
        child: ValueListenableBuilder<bool>(
          valueListenable: pressedNotifier,
          child: widget.child,
          builder: (context, value, child) =>
              widget.animationBuilder?.call(child!, value) ??
              AnimatedOpacity(
                opacity: value ? 0.56 : 1.0,
                duration: const Duration(milliseconds: 150),
                child: child,
              ),
        ),
      ),
    );
  }

  void _updatePressedState() {
    pressedNotifier.value = _pressed || _hovered;
  }
}
