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
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.space5,
          vertical: AppSpacing.space3,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: context.typography.body3,
                  ),
                  SizedBox(height: AppSpacing.space3),
                  Text(
                    title,
                    style: context.typography.caption1,
                  ),
                ],
              ),
            ),
            SizedBox(width: AppSpacing.space3),
            Icon(
              Icons.chevron_right_rounded,
              size: 16,
              color: context.colors.contentSecondary,
            ),
          ],
        ),
      ),
    );
  }
}
