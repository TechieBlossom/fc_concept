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
  });

  final Player player;
  final List<(int, int, String)>? playerVersions;
  final int? selectedVersion;
  final void Function(int, int) onVersionTap;

  @override
  Widget build(BuildContext context) {
    final colors = getPlayerColors(context, player);
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 420,
        maxHeight: 450,
      ),
      child: Stack(
        children: [
          Positioned(
            width: 360,
            child: Opacity(
              opacity: 0.1,
              child: PlayerImage(
                playerId: player.id,
                size: PlayerImageSize.infiniteWidth,
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: AppSpacing.space4 + AppSpacing.space4,
            child: PlayerImage(
              playerId: player.id,
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSpacing.space5,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              player.name,
                              style: context.typography.titleLarge,
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
                                Icon(
                                  Icons.add,
                                  color: context.colors.contentSecondary,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          _AnimatedOpacity(
                            isShown: player.position != null,
                            child: PositionBox(position: player.position),
                          ),
                          SizedBox(width: AppSpacing.space3),
                          RatingBox(
                            rating: player.rating,
                            bg: colors.$1,
                            fg: colors.$2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSpacing.space3,
                  ),
                  child: _AnimatedOpacity(
                    isShown: true,
                    child: PriceCard(
                      bg: colors.$1,
                      fg: colors.$2,
                      priceItems: [
                        PriceItem(
                          label: 'Last: ',
                          price: '10000000',
                          icon: Icons.animation_rounded,
                          formatter: currencyFormatter,
                        ),
                        PriceItem(
                          label: 'Min: ',
                          price: '9000000',
                          icon: Icons.animation_rounded,
                          formatter: currencyFormatter,
                        ),
                        PriceItem(
                          label: 'Max: ',
                          price: '12000000',
                          icon: Icons.animation_rounded,
                          formatter: currencyFormatter,
                        ),
                        const PriceItem(
                          label: 'PRP:',
                          price: '50%',
                        ),
                      ],
                    ),
                  ),
                ),
                _AnimatedOpacity(
                  isShown: player.pace != null,
                  child: StatCard(
                    paceRating: player.pace ?? 0,
                    shootRating: player.shooting ?? 0,
                    passRating: player.passing ?? 0,
                    dribbleRating: player.dribbling ?? 0,
                    defendRating: player.defending ?? 0,
                    physicalRating: player.physicality ?? 0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSpacing.space3,
                  ),
                  child: _AnimatedOpacity(
                    isShown: player.age != null,
                    child: InfoCard(
                      age: player.age ?? 0,
                      height: player.height ?? 0,
                      skills: player.skillMoves ?? 0,
                      weakFoot: player.weakFoot ?? 0,
                      workRate:
                          '${player.attackWorkRate?.name.toUpperCase() ?? ''}'
                          '/${player.defenseWorkRate?.name.toUpperCase() ?? ''}',
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 48,
                      maxHeight: 48,
                    ),
                    child: _AnimatedOpacity(
                      isShown: playerVersions != null,
                      child: Versions(
                        ids: playerVersions,
                        selectedVersion: selectedVersion,
                        onItemTap: onVersionTap,
                      ),
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
