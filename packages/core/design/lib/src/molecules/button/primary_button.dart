import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
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
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: buttonType == ButtonSize.normal ? 36 : 32,
        maxHeight: buttonType == ButtonSize.normal ? 36 : 32,
      ),
      child: FilledButton(
        style: ButtonStyle(
          textStyle: WidgetStateProperty.all<TextStyle?>(
            switch (buttonType) {
              ButtonSize.normal => Theme.of(context).textTheme.labelMedium,
              ButtonSize.small => Theme.of(context).textTheme.labelSmall,
            },
          ),
          foregroundColor: WidgetStateProperty.all<Color>(
            Theme.of(context).colorScheme.onPrimary,
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: switch (buttonType) {
                ButtonSize.normal => mediumCorner.all,
                ButtonSize.small => smallCorner.all,
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
              ButtonSize.normal => spacingXL.horizontal,
              ButtonSize.small => spacingL.horizontal,
            },
          ),
        ),
        onPressed: onPressed,
        child: Text(text.toUpperCase()),
      ),
    );
  }
}
