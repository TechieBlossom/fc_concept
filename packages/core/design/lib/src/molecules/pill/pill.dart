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
        ? Theme.of(context).colorScheme.onSecondaryContainer
        : Theme.of(context).colorScheme.primary;
    final textStyle = pillItem.isSelected
        ? switch (pillItem.hasDigit) {
            true => context.labelSmallDigit(),
            false => context.labelSmall(),
          }
        : switch (pillItem.hasDigit) {
            true => context.bodySmallDigit(),
            false => context.bodySmall(),
          };
    return InkWell(
      onTap: (pillItem.onTap != null)
          ? () {
              pillItem.onTap!();
            }
          : null,
      radius: mediumCorner.value,
      borderRadius: mediumCorner.all,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        constraints: BoxConstraints(
          minHeight: 28,
          maxHeight: 28,
        ),
        padding: spacingXL.horizontal,
        decoration: BoxDecoration(
          borderRadius: mediumCorner.all,
          border: Border.all(
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
          color: pillItem.isSelected
              ? Theme.of(context).colorScheme.secondaryContainer
              : Colors.transparent,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              pillItem.text.toUpperCase(),
              style: pillItem.isSelected
                  ? textStyle.copyWith(color: color)
                  : textStyle.copyWith(color: color),
            ),
            if (pillItem.iconData != null) ...[
              SizedBox(width: spacingXS.value),
              Icon(pillItem.iconData, size: 16, color: color),
            ],
          ],
        ),
      ),
    );
  }
}
