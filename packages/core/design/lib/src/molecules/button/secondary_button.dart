import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.text,
    this.onPressed,
    this.buttonType = ButtonSize.normal,
    this.leading,
  });

  final String text;
  final VoidCallback? onPressed;
  final ButtonSize buttonType;
  final Widget? leading;

  factory SecondaryButton.icon({
    required String text,
    VoidCallback? onPressed,
    required Widget leading,
  }) =>
      SecondaryButton(
        text: text,
        onPressed: onPressed,
        buttonType: ButtonSize.normal,
        leading: leading,
      );

  @override
  Widget build(BuildContext context) {
    final style = ButtonStyle(
      textStyle: WidgetStateProperty.all<TextStyle?>(
        switch (buttonType) {
          ButtonSize.normal => context.typography.body3,
          ButtonSize.small => context.typography.body4,
        },
      ),
      foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
        final mainColor = context.colors.contentPrimary;
        if (states.contains(WidgetState.pressed)) {
          return Color.alphaBlend(
            mainColor.withAlpha(153),
            context.colors.backgroundTertiary,
          );
        } else if (states.contains(WidgetState.disabled)) {
          return context.colors.contentSecondary;
        }
        return mainColor;
      }),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppCornerRadius.radius1),
        ),
      ),
      backgroundColor: WidgetStateProperty.all<Color?>(Colors.transparent),
      padding: WidgetStateProperty.all<EdgeInsets>(
        switch (buttonType) {
          ButtonSize.normal => const EdgeInsets.symmetric(
              vertical: AppSpacing.space3,
            ),
          ButtonSize.small => const EdgeInsets.symmetric(
              vertical: AppSpacing.space2,
            ),
        },
      ),
    );

    if (leading != null) {
      return FilledButton.icon(
        style: style,
        onPressed: onPressed,
        icon: leading,
        label: Text(text),
      );
    }

    return FilledButton(
      style: style,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
