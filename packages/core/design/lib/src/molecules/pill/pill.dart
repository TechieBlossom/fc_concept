import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

const _height = 28.0;

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
            true => context.typography.body5,
            false => context.typography.caption1,
          }
        : switch (pillItem.hasDigit) {
            true => context.typography.body5,
            false => context.typography.caption1,
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
        height: _height,
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.space3,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppCornerRadius.radius1),
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
