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
    return SizedBox(
      height: 36,
      child: FilledButton(
        style: ButtonStyle(
          textStyle: WidgetStateProperty.all<TextStyle?>(
            switch (buttonType) {
              ButtonSize.normal => context.typography.body3,
              ButtonSize.small => context.typography.body4,
            },
          ),
          foregroundColor:
              WidgetStateProperty.all<Color>(context.colors.onPrimary),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppCornerRadius.radius1),
            ),
          ),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
            final mainColor = context.colors.primary;
            if (states.contains(WidgetState.pressed)) {
              return Color.alphaBlend(
                mainColor.withAlpha(204),
                context.colors.backgroundTertiary,
              );
            } else if (states.contains(WidgetState.disabled)) {
              return context.colors.contentSecondary;
            }
            return mainColor;
          }),
          padding: WidgetStateProperty.all<EdgeInsets>(
            switch (buttonType) {
              ButtonSize.normal => const EdgeInsets.symmetric(
                  horizontal: AppSpacing.space5,
                  vertical: AppSpacing.space1,
                ),
              ButtonSize.small => const EdgeInsets.symmetric(
                  horizontal: AppSpacing.space4,
                  vertical: AppSpacing.space1,
                ),
            },
          ),
        ),
        onPressed: onPressed,
        child: Text(text.toUpperCase()),
      ),
    );
  }
}
