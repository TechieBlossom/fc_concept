import 'package:core_design/design.dart';
import 'package:core_design/src/molecules/tappable/app_tappable.dart';
import 'package:flutter/material.dart';

const _height = 36.0;

class Pill<T> extends StatelessWidget {
  const Pill({
    super.key,
    required this.pillItem,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  final PillItem<T> pillItem;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final color = pillItem.isSelected
        ? context.colors.onPrimary
        : context.colors.contentPrimary;
    final textStyle = pillItem.isSelected
        ? switch (pillItem.hasDigit) {
            true => context.typography.body5,
            false => context.typography.caption1,
          }
        : switch (pillItem.hasDigit) {
            true => context.typography.body5,
            false => context.typography.caption1,
          };
    return AppTappable(
      onTap: (pillItem.onTap != null) ? () => pillItem.onTap?.call() : null,
      child: AnimatedContainer(
        height: _height,
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.space4,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppCornerRadius.radius1),
          color: pillItem.isSelected
              ? context.colors.primary
              : context.colors.backgroundTertiary,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: mainAxisAlignment,
          children: [
            if (pillItem.image != null) ...[
              pillItem.image!,
              SizedBox(width: AppSpacing.space2),
            ],
            Flexible(
              child: Text(
                pillItem.text,
                style: textStyle.copyWith(color: color),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
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
