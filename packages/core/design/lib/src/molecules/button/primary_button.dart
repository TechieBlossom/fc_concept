import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
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
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: buttonType == ButtonType.normal ? 36 : 32,
        maxHeight: buttonType == ButtonType.normal ? 36 : 32,
      ),
      child: FilledButton(
        style: ButtonStyle(
          textStyle: WidgetStateProperty.all<TextStyle?>(
            switch (buttonType) {
              ButtonType.normal => Theme.of(context).textTheme.labelMedium,
              ButtonType.small => Theme.of(context).textTheme.labelSmall,
            },
          ),
          foregroundColor: WidgetStateProperty.all<Color>(
            Theme.of(context).colorScheme.onPrimary,
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: switch (buttonType) {
                ButtonType.normal => mediumCorner.all,
                ButtonType.small => smallCorner.all,
              },
            ),
          ),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
            if (states.contains(WidgetState.pressed)) {
              return Theme.of(context).colorScheme.secondary;
            } else if (states.contains(WidgetState.disabled)) {
              return Theme.of(context).colorScheme.secondary;
            }
            return Theme.of(context).colorScheme.primary;
          }),
          padding: WidgetStateProperty.all<EdgeInsets>(
            switch (buttonType) {
              ButtonType.normal => spacingXL.horizontal,
              ButtonType.small => spacingL.horizontal,
            },
          ),
        ),
        onPressed: onPressed,
        child: Text(text.toUpperCase()),
      ),
    );
  }
}
