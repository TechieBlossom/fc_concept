import 'package:core_design/src/atoms/atoms.dart';
import 'package:flutter/material.dart';

class SavedFilterItem extends StatelessWidget {
  const SavedFilterItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: spacingXL.horizontal + spacingM.vertical,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: context.titleMedium(),
                  ),
                  SizedBox(height: spacingM.value),
                  Text(
                    title,
                    style: context.bodySmall(),
                  ),
                ],
              ),
            ),
            SizedBox(width: spacingM.value),
            Icon(
              Icons.chevron_right_rounded,
              size: 16,
              color: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
