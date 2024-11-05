import 'package:core_design/src/atoms/atoms.dart';
import 'package:flutter/material.dart';

class CheapestPlayerByRatingCard extends StatelessWidget {
  const CheapestPlayerByRatingCard({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.space4,
        vertical: AppSpacing.space5,
      ),
      child: ListTile(
        onTap: onTap,
        tileColor: context.colors.backgroundTertiary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
        ),
        title: Text(
          'Cheapest by Rating',
          style: context.typography.body3.copyWith(
            color: context.colors.contentPrimary,
          ),
        ),
        subtitle: Text(
          'Find the cheapest players by rating',
          style: context.typography.caption1.copyWith(
            color: context.colors.contentSecondary,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios_rounded, size: 24),
      ),
    );
  }
}
