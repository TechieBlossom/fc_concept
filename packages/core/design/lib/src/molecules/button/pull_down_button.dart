import 'package:core_design/src/atoms/atoms.dart';
import 'package:flutter/material.dart';

class PullDownButton extends StatelessWidget {
  const PullDownButton({
    super.key,
    required this.label,
    this.borderRadius,
    this.pullDownButtonType = PullDownButtonType.compact,
    this.icon,
    this.onTap,
    this.constrainedWidth,
  }) : assert(
  (constrainedWidth != null &&
      pullDownButtonType == PullDownButtonType.compact) ||
      (constrainedWidth == null &&
          pullDownButtonType == PullDownButtonType.full),
  );

  final String label;
  final BorderRadius? borderRadius;
  final PullDownButtonType pullDownButtonType;
  final Widget? icon;
  final VoidCallback? onTap;
  final double? constrainedWidth;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: switch (pullDownButtonType) {
        PullDownButtonType.full => BoxConstraints(),
        PullDownButtonType.compact =>
            BoxConstraints(
              minWidth: constrainedWidth!,
              maxWidth: constrainedWidth!,
            ),
      },
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius ?? infiniteCorner.all,
        radius: infiniteCorner.value,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          height: switch (pullDownButtonType) {
            PullDownButtonType.full => 36,
            PullDownButtonType.compact => 28,
          },
          decoration: BoxDecoration(
            borderRadius: borderRadius ?? infiniteCorner.all,
            border: Border.all(
              width: 1,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          child: Padding(
            padding: spacingM.horizontal +
                (pullDownButtonType == PullDownButtonType.compact
                    ? spacingXS.vertical
                    : spacingM.vertical),
            child: Row(
              mainAxisSize: switch (pullDownButtonType) {
                PullDownButtonType.compact => MainAxisSize.min,
                PullDownButtonType.full => MainAxisSize.max,
              },
              mainAxisAlignment: switch (pullDownButtonType) {
                PullDownButtonType.compact => MainAxisAlignment.start,
                PullDownButtonType.full => MainAxisAlignment.spaceBetween,
              },
              children: [
                Expanded(
                  child: Padding(
                    padding: spacingS.right,
                    child: Text(
                      label,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.labelSmall(),
                    ),
                  ),
                ),
                if (icon != null) icon!,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum PullDownButtonType { compact, full }
