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
          ButtonSize.normal => Theme.of(context).textTheme.labelMedium,
          ButtonSize.small => Theme.of(context).textTheme.labelSmall,
        },
      ),
      foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
        if (states.contains(WidgetState.pressed)) {
          return context.colors.contentTertiary;
        } else if (states.contains(WidgetState.disabled)) {
          return context.colors.contentTertiary;
        }
        return context.colors.contentSecondary;
      }),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
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
        label: Text(text.toUpperCase()),
      );
    }

    return FilledButton(
      style: style,
      onPressed: onPressed,
      child: Text(text.toUpperCase()),
    );
  }
}
