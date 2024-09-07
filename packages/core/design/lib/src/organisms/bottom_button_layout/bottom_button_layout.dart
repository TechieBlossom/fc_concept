import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class BottomButtonLayout extends StatelessWidget {
  const BottomButtonLayout({
    super.key,
    required this.buttons,
    this.isLoading = false,
  });

  final List<Widget> buttons;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final widgets = List<Widget>.empty(growable: true);
    buttons.indexed.forEach((entry) {
      final index = entry.$1;
      final widget = entry.$2;
      if (index != 0) {
        widgets.add(
          SizedBox(
            height: AppSpacing.space5 + AppSpacing.space3,
            width: AppSpacing.space7,
          ),
        );
      }
      widgets.add(widget);
    });
    if (isLoading) {
      return ShimmerBottomButtonLayout();
    }
    return Container(
      padding: const EdgeInsets.only(
        left: AppSpacing.space5,
        right: AppSpacing.space5,
        top: AppSpacing.space5,
        bottom: AppSpacing.space7,
      ),
      color: context.colors.backgroundTertiary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: widgets,
      ),
    );
  }
}
