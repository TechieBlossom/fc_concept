import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class ClubCard extends StatelessWidget {
  const ClubCard({
    super.key,
    required this.club,
    required this.onTap,
    required this.margin,
  });

  final Club club;
  final VoidCallback? onTap;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
        child: Container(
          padding: const EdgeInsets.all(AppSpacing.space5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
            color: context.colors.backgroundTertiary,
          ),
          child: Row(
            children: [
              ClubImage(club: club, size: ClubImageSize.medium),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CLUB',
                      style: context.typography.body5.copyWith(
                        color: context.colors.contentSecondary,
                      ),
                    ),
                    const Space(space: AppSpacing.space2),
                    Text(
                      club.name,
                      style: context.typography.body3.copyWith(
                        color: context.colors.contentPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              // Icon(Icons.arrow_forward_ios_rounded, size: 24),
            ],
          ),
        ),
      ),
    );
  }
}
