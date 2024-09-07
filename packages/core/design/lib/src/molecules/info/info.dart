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
        Row(
          children: [
            Text(
              value.toUpperCase(),
              style: context.typography.labelMediumDigit,
            ),
            if (icon != null) icon!,
          ],
        ),
        SizedBox(height: AppSpacing.space2),
        Text(
          label,
          style: context.typography.bodySmall,
        ),
      ],
    );
  }
}
