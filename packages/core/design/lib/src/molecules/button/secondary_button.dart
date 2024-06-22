import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.text,
    this.onPressed,
    this.buttonType = ButtonSize.normal,
  });

  final String text;
  final VoidCallback? onPressed;
  final ButtonSize buttonType;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
        textStyle: WidgetStateProperty.all<TextStyle?>(
          switch (buttonType) {
            ButtonSize.normal => Theme.of(context).textTheme.labelMedium,
            ButtonSize.small => Theme.of(context).textTheme.labelSmall,
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.pressed)) {
            return Theme.of(context).colorScheme.secondary;
          } else if (states.contains(WidgetState.disabled)) {
            return Theme.of(context).colorScheme.secondary;
          }
          return Theme.of(context).colorScheme.primary;
        }),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: mediumCorner.all,
          ),
        ),
        backgroundColor: WidgetStateProperty.all<Color?>(Colors.transparent),
        padding: WidgetStateProperty.all<EdgeInsets>(
          switch (buttonType) {
            ButtonSize.normal => spacingXL.horizontal + spacingM.vertical,
            ButtonSize.small => spacingM.horizontal + spacingXS.vertical,
          },
        ),
      ),
      onPressed: onPressed,
      child: Text(text.toUpperCase()),
    );
  }
}
