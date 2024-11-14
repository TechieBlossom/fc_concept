import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/image/league_image.dart';
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
      child: ListTile(
        onTap: onTap,
        tileColor: context.colors.backgroundTertiary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
        ),
        leading: LeagueImage(league: league),
        title: Text(
          league.name,
          style: context.typography.body3.copyWith(
            color: context.colors.contentPrimary,
          ),
        ),
        // trailing: Icon(Icons.arrow_forward_ios_rounded, size: 24),
      ),
    );
  }
}
