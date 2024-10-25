import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class PlayerBox extends StatelessWidget {
  const PlayerBox({
    super.key,
    required this.player,
    required this.onTap,
  });

  final VoidCallback onTap;
  final Player player;

  @override
  Widget build(BuildContext context) {
    final colors = getPlayerColors(context, player);
    final color1 = Color(colors.$1).withOpacity(0.6);
    final color2 = Color(colors.$1).withOpacity(0.1);
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 140,
        height: 120,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: Container(
                width: 120,
                height: 120,
                padding: const EdgeInsets.all(AppSpacing.space3),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      color1,
                      color2,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
                  border: BorderDirectional(
                    end: BorderSide(
                      color: color1,
                      width: 2,
                      strokeAlign: BorderSide.strokeAlignInside,
                    ),
                    bottom: BorderSide(
                      color: color1,
                      width: 2,
                      strokeAlign: BorderSide.strokeAlignInside,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 110,
                      child: Text(
                        player.commonName ?? '',
                        textAlign: TextAlign.end,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: context.typography.body4.copyWith(
                          color: context.colors.contentPrimary,
                        ),
                      ),
                    ),
                    const Space(space: AppSpacing.space2),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PositionBox(
                            position: player.position,
                            size: PositionBoxSize.small),
                        const Space(
                          space: AppSpacing.space1,
                          orientation: Axis.horizontal,
                        ),
                        RatingBox(
                          rating: player.overall,
                          size: RatingBoxSize.small,
                          bg: colors.$1,
                          fg: colors.$2,
                        ),
                      ],
                    ),
                    const Space(space: AppSpacing.space2),
                    SizedBox(
                      width: 90,
                      child: Text(
                        player.rarity.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.end,
                        style: context.typography.caption2,
                      ),
                    ),
                    const Spacer(),
                    if (player.price?.isExtinct ?? false)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'EXTINCT',
                            style: context.typography.caption2,
                          ),
                          const Space(
                            space: AppSpacing.space1,
                            orientation: Axis.horizontal,
                          ),
                          AppAssets.images.futCoin.image(
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                    if (player.price?.price != null)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            AppFormatter.formatCurrency(player.price?.price ?? 0),
                            style: context.typography.caption2,
                          ),
                          const Space(
                            space: AppSpacing.space1,
                            orientation: Axis.horizontal,
                          ),
                          (player.isSbcItem)
                              ? AppAssets.images.sbcIcon.image(
                                  width: 20,
                                  height: 20,
                                )
                              : AppAssets.images.futCoin.image(
                                  width: 20,
                                  height: 20,
                                ),
                        ],
                      ),
                    if (player.isObjectiveItem)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'OBJECTIVE',
                            style: context.typography.caption2,
                          ),
                          const Space(
                            space: AppSpacing.space1,
                            orientation: Axis.horizontal,
                          ),
                          AppAssets.images.xp.image(
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: -10,
              top: 0,
              bottom: 16,
              child: PlayerImage(
                imagePath: player.imagePath,
                size: PlayerImageSize.medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
