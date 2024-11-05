import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({
    super.key,
    required this.label,
    required this.value,
    this.icon,
  });

  final String label;
  final String value;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: context.typography.body3.copyWith(
            color: context.colors.contentPrimary,
          ),
        ),
        const SizedBox(height: AppSpacing.space2),
        Row(
          children: [
            Text(
              value,
              style: context.typography.body5.copyWith(
                color: context.colors.contentPrimary,
              ),
            ),
            if (icon != null) icon!,
          ],
        ),
      ],
    );
  }
}
