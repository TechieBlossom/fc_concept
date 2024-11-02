import 'package:core_design/design.dart';
import 'package:core_design/src/organisms/card/extinct_price_card.dart';
import 'package:core_design/src/organisms/card/objective_price_card.dart';
import 'package:core_design/src/organisms/card/sbc_price_card.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class PlayerHeader extends StatelessWidget {
  const PlayerHeader({
    super.key,
    required this.player,
    required this.alternativePositions,
    required this.playerPrice,
  });

  final Player player;
  final List<Position>? alternativePositions;
  final PlayerPrice? playerPrice;

  @override
  Widget build(BuildContext context) {
    final colors = getPlayerColors(context, player);
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 192,
        maxHeight: 292,
      ),
      child: Stack(
        children: [
          Positioned(
            width: 360,
            child: Opacity(
              opacity: 0.2,
              child: PlayerImage(
                imagePath: player.imagePath,
                size: PlayerImageSize.infiniteWidth,
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: AppSpacing.space6,
            child: PlayerImage(
              imagePath: player.imagePath,
              size: PlayerImageSize.large,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.space5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            player.commonName ?? '',
                            style: context.typography.title3,
                          ),
                          SizedBox(height: AppSpacing.space2),
                          Row(
                            children: [
                              RarityBox(
                                rarity: player.rarity.name,
                                bg: colors.$1,
                                fg: colors.$2,
                              ),
                              SizedBox(width: AppSpacing.space2),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            AppAnimatedOpacity(
                              isShown: player.position != null,
                              child: PositionBox(
                                position: player.position,
                                size: PositionBoxSize.medium,
                              ),
                            ),
                            SizedBox(width: AppSpacing.space3),
                            RatingBox(
                              rating: player.overall,
                              size: RatingBoxSize.medium,
                              bg: colors.$1,
                              fg: colors.$2,
                            ),
                          ],
                        ),
                        SizedBox(height: AppSpacing.space2),
                        AppAnimatedOpacity(
                          isShown: alternativePositions != null,
                          child: Text(
                            alternativePositions
                                    ?.map((e) => e.shortLabel)
                                    .join(' - ') ??
                                '',
                            style: context.typography.caption2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSpacing.space3,
                  ),
                  child: AppAnimatedOpacity(
                    isShown: playerPrice != null,
                    child: _PriceWidget(
                      player: player,
                      playerPrice: playerPrice,
                      colors: colors,
                    ),
                  ),
                ),
                AppAnimatedOpacity(
                  isShown: player.facePace != null,
                  child: player.position?.shortLabel == 'GK'
                      ? AttributesCard(
                          paceRating: player.gkFaceSpeed ?? 0,
                          shootRating: player.gkFaceKicking ?? 0,
                          passRating: player.gkFaceHandling ?? 0,
                          dribbleRating: player.gkFaceReflexes ?? 0,
                          defendRating: player.gkFacePositioning ?? 0,
                          physicalRating: player.gkFaceDiving ?? 0,
                          isGK: true,
                        )
                      : AttributesCard(
                          paceRating: player.facePace ?? 0,
                          shootRating: player.faceShooting ?? 0,
                          passRating: player.facePassing ?? 0,
                          dribbleRating: player.faceDribbling ?? 0,
                          defendRating: player.faceDefending ?? 0,
                          physicalRating: player.facePhysicality ?? 0,
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSpacing.space3,
                  ),
                  child: AppAnimatedOpacity(
                    isShown: player.age != null,
                    child: InfoCard(
                      age: player.age.toString(),
                      height: player.heightInString(),
                      weight: player.weightInString(),
                      skills: player.skillMoves.toString(),
                      weakFoot: player.weakFoot.toString(),
                      foot: player.footInString(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PriceWidget extends StatelessWidget {
  const _PriceWidget({
    required this.player,
    required this.playerPrice,
    required this.colors,
  });

  final Player player;
  final PlayerPrice? playerPrice;
  final (int, int) colors;

  @override
  Widget build(BuildContext context) {
    if (playerPrice?.currentPrice.isExtinct ?? false)
      return ExtinctPriceCard(
        bg: colors.$1,
        fg: colors.$2,
        price: playerPrice?.currentPrice.price ?? 0,
      );
    if (playerPrice?.currentPrice.isSbc ?? false) {
      return SbcPriceCard(
        bg: colors.$1,
        fg: colors.$2,
        price: playerPrice?.currentPrice.price ?? 0,
      );
    } else if (playerPrice?.currentPrice.price != null)
      return PriceCard(
        bg: colors.$1,
        fg: colors.$2,
        priceItems: [
          PriceItem(
            label: 'Current: ',
            price: playerPrice?.currentPrice.price,
          ),
          PriceItem(
            label: 'Lowest: ',
            price: playerPrice?.momentum.lowestBin,
          ),
          PriceItem(
            label: 'Highest: ',
            price: playerPrice?.momentum.highestBin,
          ),
          PriceItem(
            label: 'Discard: ',
            price: playerPrice?.overview.discardValue,
          ),
        ],
      );
    if (player.isObjectiveItem)
      return ObjectivePriceCard(
        bg: colors.$1,
        fg: colors.$2,
        price: playerPrice?.currentPrice.price ?? 0,
      );
    return SizedBox(height: 116);
  }
}
