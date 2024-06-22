import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class Pill extends StatefulWidget {
  const Pill({
    super.key,
    required this.pillItem,
  });

  final PillItem pillItem;

  @override
  State<Pill> createState() => _PillState();
}

class _PillState extends State<Pill> {
  late bool isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = widget.pillItem.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    final color = isSelected
        ? Theme.of(context).colorScheme.onSecondaryContainer
        : Theme.of(context).colorScheme.primary;
    final textStyle = isSelected
        ? switch (widget.pillItem.hasDigit) {
            true => context.labelSmallDigit(),
            false => context.labelSmall(),
          }
        : switch (widget.pillItem.hasDigit) {
            true => context.bodySmallDigit(),
            false => context.bodySmall(),
          };
    return InkWell(
      onTap: (widget.pillItem.onTap != null)
          ? () {
              widget.pillItem.onTap!();
              setState(() => isSelected = !isSelected);
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
          color: isSelected
              ? Theme.of(context).colorScheme.secondaryContainer
              : Colors.transparent,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.pillItem.text.toUpperCase(),
              style: isSelected
                  ? textStyle.copyWith(color: color)
                  : textStyle.copyWith(color: color),
            ),
            if (widget.pillItem.iconData != null) ...[
              SizedBox(width: spacingXS.value),
              Icon(widget.pillItem.iconData, size: 16, color: color),
            ],
          ],
        ),
      ),
    );
  }
}
