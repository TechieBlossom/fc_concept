import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/image/club_image.dart';
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
      child: ListTile(
        onTap: onTap,
        tileColor: context.colors.backgroundTertiary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
        ),
        leading: ClubImage(club: club, size: ClubImageSize.large),
        title: Text('CLUB'),
        titleTextStyle: context.typography.body4.copyWith(
          color: context.colors.contentSecondary,
        ),
        subtitle: Text(club.name),
        subtitleTextStyle: context.typography.body1.copyWith(
          color: context.colors.contentPrimary,
        ),
        // trailing: Icon(Icons.arrow_forward_ios_rounded, size: 24),
      ),
    );
  }
}
