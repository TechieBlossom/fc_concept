import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({
    super.key,
    required this.text,
    this.onPressed,
    this.buttonType = ButtonSize.normal,
    this.reverseTheme = false,
  });

  final String text;
  final VoidCallback? onPressed;
  final ButtonSize buttonType;
  final bool reverseTheme;

  @override
  Widget build(BuildContext context) {
    final style = ButtonStyle(
      splashFactory: NoSplash.splashFactory,
      textStyle: WidgetStateProperty.all<TextStyle?>(
        switch (buttonType) {
          ButtonSize.normal => context.typography.body1.copyWith(
              decoration: TextDecoration.underline,
            ),
          ButtonSize.small => context.typography.caption1.copyWith(
              decoration: TextDecoration.underline,
            ),
        },
      ),
      foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
        if (reverseTheme) {
          if (states.contains(WidgetState.pressed)) {
            return context.colors.contentTertiary;
          } else if (states.contains(WidgetState.disabled)) {
            return context.colors.contentTertiary;
          }
          return context.colors.backgroundPrimary;
        } else {
          if (states.contains(WidgetState.pressed)) {
            return context.colors.contentTertiary;
          } else if (states.contains(WidgetState.disabled)) {
            return context.colors.contentTertiary;
          }
          return context.colors.contentSecondary;
        }
      }),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
        ),
      ),
      backgroundColor: WidgetStateProperty.all<Color?>(Colors.transparent),
      overlayColor: WidgetStateProperty.all<Color?>(Colors.transparent),
      padding: WidgetStateProperty.all<EdgeInsets>(
        switch (buttonType) {
          ButtonSize.normal => const EdgeInsets.symmetric(
              horizontal: AppSpacing.space3,
              vertical: AppSpacing.space3,
            ),
          ButtonSize.small => const EdgeInsets.symmetric(
              vertical: AppSpacing.space2,
            ),
        },
      ),
    );

    return TextButton(
      style: style,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
