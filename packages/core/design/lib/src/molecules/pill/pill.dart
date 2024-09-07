import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class Pill extends StatelessWidget {
  const Pill({
    super.key,
    required this.pillItem,
  });

  final PillItem pillItem;

  @override
  Widget build(BuildContext context) {
    final color = pillItem.isSelected
        ? context.colors.backgroundPrimary
        : context.colors.contentSecondary;
    final textStyle = pillItem.isSelected
        ? switch (pillItem.hasDigit) {
            true => context.typography.labelSmallDigit,
            false => context.typography.labelSmall,
          }
        : switch (pillItem.hasDigit) {
            true => context.typography.bodySmallDigit,
            false => context.typography.bodySmall,
          };
    return InkWell(
      onTap: (pillItem.onTap != null)
          ? () {
              pillItem.onTap!();
            }
          : null,
      radius: mediumCorner.value,
      borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        constraints: BoxConstraints(
          minHeight: 28,
          maxHeight: 28,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.space5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
          border: Border.all(
            color: context.colors.backgroundSecondary,
          ),
          color: pillItem.isSelected
              ? context.colors.backgroundSecondary
              : Colors.transparent,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              pillItem.text.toUpperCase(),
              style: textStyle.copyWith(color: color),
            ),
            if (pillItem.iconData != null) ...[
              SizedBox(width: AppSpacing.space1),
              Icon(pillItem.iconData, size: 16, color: color),
            ],
          ],
        ),
      ),
    );
  }
}
