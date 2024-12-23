import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/image/club_image.dart';
import 'package:core_design/src/molecules/image/league_image.dart';
import 'package:core_design/src/molecules/image/nation_image.dart';
import 'package:core_design/src/molecules/image/player_image.dart';
import 'package:core_design/src/molecules/position_box/position_box.dart';
import 'package:core_design/src/molecules/rating_box/rating_box.dart';
import 'package:core_design/src/molecules/space/space.dart';
import 'package:core_design/src/utility/get_player_colors.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class PlayerListItem extends StatelessWidget {
  const PlayerListItem({
    super.key,
    required this.player,
    required this.onTap,
    this.isFavorite = false,
    this.onFavoriteToggle,
    this.showTeams = true,
  });

  // Image widget is null, Just for catalog purpose
  final Player player;
  final VoidCallback onTap;
  final bool isFavorite;
  final bool showTeams;
  final VoidCallback? onFavoriteToggle;

  @override
  Widget build(BuildContext context) {
    final colors = getPlayerColors(context, player);
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: showTeams ? 75 : 54,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: AppSpacing.space5),
            PlayerImage(imagePath: player.imagePath),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.space3,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      player.commonName ?? '',
                      style: context.typography.body3.copyWith(
                        color: context.colors.contentPrimary,
                      ),
                    ),
                    SizedBox(height: AppSpacing.space2),
                    Text(
                      player.rarity.name,
                      style: context.typography.caption1.copyWith(
                        color: context.colors.contentSecondary,
                      ),
                    ),
                    if (showTeams) ...[
                      SizedBox(height: AppSpacing.space2),
                      Row(
                        children: [
                          if (player.club != null) ...[
                            ClubImage(club: player.club!),
                            const Space(
                              space: AppSpacing.space2,
                              orientation: Axis.horizontal,
                            ),
                          ],
                          if (player.nation != null) ...[
                            NationImage(nation: player.nation!),
                            const Space(
                              space: AppSpacing.space2,
                              orientation: Axis.horizontal,
                            ),
                          ],
                          if (player.league?.name != 'Icons')
                            LeagueImage(league: player.league!),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ),
            PositionBox(
              position: player.position,
              size: PositionBoxSize.medium,
            ),
            SizedBox(width: AppSpacing.space3),
            RatingBox(
              rating: player.overall,
              size: RatingBoxSize.medium,
              bg: colors.$1,
              fg: colors.$2,
            ),
            SizedBox(width: AppSpacing.space5),
          ],
        ),
      ),
    );
  }
}
