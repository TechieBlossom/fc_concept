import 'package:core_design/src/atoms/atoms.dart';
import 'package:flutter/material.dart';

class DestructiveButton extends StatelessWidget {
  const DestructiveButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 36,
        maxHeight: 36,
      ),
      child: FilledButton(
        style: ButtonStyle(
          textStyle: WidgetStateProperty.all<TextStyle?>(
            Theme.of(context).textTheme.labelMedium,
          ),
          foregroundColor: WidgetStateProperty.all<Color>(
            context.colors.backgroundPrimary,
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: mediumCorner.all),
          ),
          backgroundColor: WidgetStateProperty.all<Color?>(
            Theme.of(context).colorScheme.error,
          ),
          padding: WidgetStateProperty.all<EdgeInsets>(
            spacingXL.horizontal + spacingM.vertical,
          ),
        ),
        onPressed: onPressed,
        child: Text(text.toUpperCase()),
      ),
    );
  }
}
