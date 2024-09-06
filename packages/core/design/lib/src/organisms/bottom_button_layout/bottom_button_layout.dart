import 'package:core_design/src/atoms/atoms.dart';
import 'package:flutter/material.dart';

class BottomButtonLayout extends StatelessWidget {
  const BottomButtonLayout({
    super.key,
    required this.buttons,
  });

  final List<Widget> buttons;

  @override
  Widget build(BuildContext context) {
    final widgets = List<Widget>.empty(growable: true);
    buttons.indexed.forEach((entry) {
      final index = entry.$1;
      final widget = entry.$2;
      if (index != 0) {
        widgets.add(
          SizedBox(
            height: spacingXL.value + spacingM.value,
            width: spacingXXXL.value,
          ),
        );
      }
      widgets.add(widget);
    });
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        padding: spacingM.all + spacingXL.bottom,
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
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
