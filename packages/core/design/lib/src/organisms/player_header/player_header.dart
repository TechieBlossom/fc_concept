import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class PlayerHeader extends StatelessWidget {
  const PlayerHeader({
    super.key,
    required this.player,
    required this.playerVersions,
    required this.selectedVersion,
    required this.onVersionTap,
    required this.playerPrice,
  });

  final Player player;
  final List<(int, int, String)>? playerVersions;
  final int? selectedVersion;
  final void Function(int, int) onVersionTap;
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
              opacity: 0.1,
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
                    Row(
                      children: [
                        _AnimatedOpacity(
                          isShown: player.position != null,
                          child: PositionBox(
                            position: player.position,
                            isSmall: true,
                          ),
                        ),
                        SizedBox(width: AppSpacing.space3),
                        RatingBox(
                          rating: player.overall,
                          isSmall: true,
                          bg: colors.$1,
                          fg: colors.$2,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSpacing.space3,
                  ),
                  child: _AnimatedOpacity(
                    isShown: playerPrice != null,
                    child: (playerPrice != null)
                        ? PriceCard(
                            bg: colors.$1,
                            fg: colors.$2,
                            priceItems: [
                              PriceItem(
                                label: 'Current: ',
                                price: playerPrice!.currentPrice.price,
                                formatter: currencyFormatter,
                              ),
                              PriceItem(
                                label: 'Lowest: ',
                                price: playerPrice!.momentum.lowestBin,
                                formatter: currencyFormatter,
                              ),
                              PriceItem(
                                label: 'Highest: ',
                                price: playerPrice!.momentum.highestBin,
                                formatter: currencyFormatter,
                              ),
                              PriceItem(
                                label: 'Discard: ',
                                price: playerPrice!.overview.discardValue,
                                formatter: currencyFormatter,
                              ),
                            ],
                          )
                        : const SizedBox(height: 116),
                  ),
                ),
                _AnimatedOpacity(
                  isShown: player.facePace != null,
                  child: player.position?.shortLabel == 'GK' ? AttributesCard(
                    paceRating: player.gkFaceSpeed ?? 0,
                    shootRating: player.gkFaceKicking ?? 0,
                    passRating: player.gkFaceHandling ?? 0,
                    dribbleRating: player.gkFaceReflexes ?? 0,
                    defendRating: player.gkFacePositioning ?? 0,
                    physicalRating: player.gkFaceDiving ?? 0,
                    isGK: true,
                  ) : AttributesCard(
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
                  child: _AnimatedOpacity(
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
                // Align(
                //   alignment: Alignment.center,
                //   child: ConstrainedBox(
                //     constraints: BoxConstraints(
                //       minHeight: 48,
                //       maxHeight: 48,
                //     ),
                //     child: _AnimatedOpacity(
                //       isShown: playerVersions != null,
                //       child: Versions(
                //         ids: playerVersions,
                //         selectedVersion: selectedVersion,
                //         onItemTap: onVersionTap,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AnimatedOpacity<T> extends StatelessWidget {
  const _AnimatedOpacity({
    super.key,
    required this.child,
    required this.isShown,
  });

  final Widget child;
  final bool isShown;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isShown ? 1 : 0,
      duration: const Duration(milliseconds: 400),
      child: child,
    );
  }
}
