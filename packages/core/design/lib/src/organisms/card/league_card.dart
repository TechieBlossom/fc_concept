import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/image/league_image.dart';
import 'package:core_design/src/molecules/space/space.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class LeagueCard extends StatelessWidget {
  const LeagueCard({
    super.key,
    required this.league,
    required this.onTap,
    required this.margin,
  });

  final League league;
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
              LeagueImage(league: league, size: LeagueImageSize.medium),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'LEAGUE',
                      style: context.typography.body5.copyWith(
                        color: context.colors.contentSecondary,
                      ),
                    ),
                    const Space(space: AppSpacing.space2),
                    Text(
                      league.name,
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
