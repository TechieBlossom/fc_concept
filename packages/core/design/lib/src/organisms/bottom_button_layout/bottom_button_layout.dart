import 'package:core_design/design.dart';
import 'package:core_design/src/molecules/glass/glass.dart';
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
    return Glass.lessBlur(
      child: Container(
        padding: EdgeInsets.only(
          left: AppSpacing.space5,
          right: AppSpacing.space5,
          top: AppSpacing.space3,
          bottom: MediaQuery.of(context).padding.bottom,
        ),
        color: context.colors.backgroundTertiary70.withOpacity(0.2),
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
