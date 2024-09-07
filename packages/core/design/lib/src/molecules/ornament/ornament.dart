import 'package:core_design/src/atoms/atoms.dart';
import 'package:flutter/material.dart';

class Ornament extends StatelessWidget {
  const Ornament({
    super.key,
    required this.label,
    this.hasBorder = false,
    this.borderRadius,
    this.ornamentType = OrnamentType.compact,
    this.icon,
    this.onTap,
    this.background,
    this.foreground,
  });

  final String label;
  final bool hasBorder;
  final BorderRadius? borderRadius;
  final OrnamentType ornamentType;
  final Widget? icon;
  final VoidCallback? onTap;
  final int? background;
  final int? foreground;

  @override
  Widget build(BuildContext context) {
    final foregroundColor =
        foreground != null ? Color(foreground!) : context.colors.gold2;
    final backgroundColor =
        background != null ? Color(background!) : context.colors.gold;
    final textColor = foreground != null
        ? Color(foreground!)
        : context.colors.contentSecondary;
    return InkWell(
      onTap: onTap,
      borderRadius:
          borderRadius ?? BorderRadius.circular(AppCornerRadius.round),
      radius: infiniteCorner.value,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        height: switch (ornamentType) {
          OrnamentType.full => 28,
          OrnamentType.compact => 24,
        },
        decoration: BoxDecoration(
          borderRadius:
              borderRadius ?? BorderRadius.circular(AppCornerRadius.round),
          border: hasBorder
              ? Border.all(
                  width: 0.5,
                  color: foregroundColor,
                )
              : null,
          color: backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.space5,
            vertical: AppSpacing.space2,
          ),
          child: Row(
            mainAxisSize: switch (ornamentType) {
              OrnamentType.compact => MainAxisSize.min,
              OrnamentType.full => MainAxisSize.max,
            },
            mainAxisAlignment: switch (ornamentType) {
              OrnamentType.compact => MainAxisAlignment.center,
              OrnamentType.full => MainAxisAlignment.center,
            },
            children: [
              Text(
                label.toUpperCase(),
                style: context.typography.labelSmall.copyWith(
                  color: textColor,
                ),
              ),
              if (icon != null) icon!,
            ],
          ),
        ),
      ),
    );
  }
}

enum OrnamentType { compact, full }
