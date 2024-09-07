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
        PullDownButtonType.compact => BoxConstraints(
            minWidth: constrainedWidth!,
            maxWidth: constrainedWidth!,
          ),
      },
      child: InkWell(
        onTap: onTap,
        borderRadius:
            borderRadius ?? BorderRadius.circular(AppCornerRadius.round),
        radius: infiniteCorner.value,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          height: switch (pullDownButtonType) {
            PullDownButtonType.full => 36,
            PullDownButtonType.compact => 28,
          },
          decoration: BoxDecoration(
            borderRadius:
                borderRadius ?? BorderRadius.circular(AppCornerRadius.round),
            border: Border.all(
              width: 1,
              color: context.colors.contentSecondary,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.space3,
              vertical: pullDownButtonType == PullDownButtonType.compact
                  ? AppSpacing.space2
                  : AppSpacing.space3,
            ),
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
                    padding: const EdgeInsets.only(
                      right: AppSpacing.space2,
                    ),
                    child: Text(
                      label,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.typography.labelSmall,
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
