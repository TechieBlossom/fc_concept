import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class CheapestPlayerByRatingListItem extends StatelessWidget {
  const CheapestPlayerByRatingListItem({
    super.key,
    required this.player,
    required this.onTap,
    this.isFavorite = false,
    this.onFavoriteToggle,
  });

  // Image widget is null, Just for catalog purpose
  final Player player;
  final VoidCallback onTap;
  final bool isFavorite;
  final VoidCallback? onFavoriteToggle;

  @override
  Widget build(BuildContext context) {
    final colors = getPlayerColors(context, player);
    return InkWell(
      onTap: onTap,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 75,
          maxHeight: 75,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
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
                ),
              ),
            ),
            SizedBox(width: AppSpacing.space3),
            PositionBox(
              position: player.position,
              size: PositionBoxSize.medium,
            ),
            Space(space: AppSpacing.space3, orientation: Axis.horizontal),
            Container(
              height: 32,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.space3,
                vertical: AppSpacing.space1,
              ),
              decoration: BoxDecoration(
                color: Color(colors.$1).withAlpha(255),
                borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
              ),
              child: _Price(player: player, colors: colors),
            ),
            SizedBox(width: AppSpacing.space5),
          ],
        ),
      ),
    );
  }
}

class _Price extends StatelessWidget {
  const _Price({
    required this.player,
    required this.colors,
  });

  final Player player;
  final (int, int) colors;

  @override
  Widget build(BuildContext context) {
    if (player.price?.isExtinct ?? false)
      return Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'EXTINCT',
            style: context.typography.caption2.copyWith(
              color: Color(colors.$2),
            ),
          ),
          const Space(
            space: AppSpacing.space1,
            orientation: Axis.horizontal,
          ),
          AppAssets.images.futCoin.image(
            width: 16,
            height: 16,
          ),
        ],
      );
    if (player.price?.price != null)
      return Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            AppFormatter.formatCurrency(player.price?.price ?? 0),
            style: context.typography.caption2.copyWith(
              color: Color(colors.$2),
            ),
          ),
          const Space(
            space: AppSpacing.space1,
            orientation: Axis.horizontal,
          ),
          (player.price?.isSbc ?? false)
              ? AppAssets.images.sbcIcon.image(
                  width: 16,
                  height: 16,
                )
              : AppAssets.images.futCoin.image(
                  width: 16,
                  height: 16,
                ),
        ],
      );
    if (player.isObjectiveItem)
      return Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'OBJECTIVE',
            style: context.typography.caption2.copyWith(
              color: Color(colors.$2),
            ),
          ),
          const Space(
            space: AppSpacing.space1,
            orientation: Axis.horizontal,
          ),
          AppAssets.images.xp.image(
            width: 16,
            height: 16,
          ),
        ],
      );
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'UNTRADABLE',
          style: context.typography.caption2.copyWith(
            color: Color(colors.$2),
          ),
        ),
      ],
    );
  }
}
