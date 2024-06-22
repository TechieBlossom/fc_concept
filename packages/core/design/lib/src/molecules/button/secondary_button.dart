import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.text,
    this.onPressed,
    this.buttonType = ButtonType.normal,
  });

  final String text;
  final VoidCallback? onPressed;
  final ButtonType buttonType;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
        textStyle: WidgetStateProperty.all<TextStyle?>(
          switch (buttonType) {
            ButtonType.normal => Theme.of(context).textTheme.labelMedium,
            ButtonType.small => Theme.of(context).textTheme.labelSmall,
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
            ButtonType.normal =>
              spacingXL.horizontal + spacingM.vertical,
            ButtonType.small =>
              spacingM.horizontal + spacingXS.vertical,
          },
        ),
      ),
      onPressed: onPressed,
      child: Text(text.toUpperCase()),
    );
  }
}
