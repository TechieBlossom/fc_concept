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
import 'package:flutter_slidable/flutter_slidable.dart';

class PlayerListItem extends StatefulWidget {
  const PlayerListItem({
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
  State<PlayerListItem> createState() => _PlayerListItemState();
}

class _PlayerListItemState extends State<PlayerListItem>
    with SingleTickerProviderStateMixin {
  late SlidableController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SlidableController(this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final player = widget.player;
    final colors = getPlayerColors(context, player);
    return InkWell(
      onTap: widget.onTap,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 75,
          maxHeight: 75,
        ),
        child: Slidable(
          controller: _controller,
          key: LabeledGlobalKey(player.eaId.toString()),
          endActionPane: (widget.onFavoriteToggle != null)
              ? ActionPane(
                  dismissible: widget.isFavorite
                      ? DismissiblePane(onDismissed: widget.onFavoriteToggle!)
                      : null,
                  dragDismissible: true,
                  motion: ScrollMotion(),
                  children: [
                    SlidableAction(
                      padding: EdgeInsets.zero,
                      onPressed: (context) {
                        final slidableController = Slidable.of(context);
                        if (widget.isFavorite) {
                          slidableController?.dismiss(
                            ResizeRequest(
                              Duration(milliseconds: 300),
                              widget.onFavoriteToggle!,
                            ),
                          );
                        } else {
                          widget.onFavoriteToggle!();
                        }
                      },
                      backgroundColor: context.colors.backgroundFour,
                      foregroundColor: context.colors.contentSecondary,
                      icon: widget.isFavorite
                          ? Icons.bookmark_remove
                          : Icons.bookmark_add_outlined,
                    ),
                  ],
                )
              : null,
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
                          color: context.colors.contentSecondary,
                        ),
                      ),
                      SizedBox(height: AppSpacing.space2),
                      Text(
                        player.rarity.name,
                        style: context.typography.caption1,
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
      ),
    );
  }
}
