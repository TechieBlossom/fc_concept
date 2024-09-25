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
          style: context.typography.body5,
        ),
        const SizedBox(height: AppSpacing.space2),
        Row(
          children: [
            Text(
              value,
              style: context.typography.caption2,
            ),
            if (icon != null) icon!,
          ],
        ),
      ],
    );
  }
}
