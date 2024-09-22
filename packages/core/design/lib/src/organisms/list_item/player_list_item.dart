import 'package:core_design/design.dart';
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
          key: LabeledGlobalKey(player.id.toString()),
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
                        style: context.typography.titleMedium.copyWith(
                          color: context.colors.contentSecondary,
                        ),
                      ),
                      SizedBox(height: AppSpacing.space2),
                      Text(
                        player.rarity.name,
                        style: context.typography.labelSmall,
                      ),
                      SizedBox(height: AppSpacing.space2),
                      Row(
                        children: [
                          LogoLabel(
                            id: player.club?.eaId,
                            label: player.club?.name,
                            type: LogoEntity.club,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.space2,
                            ),
                            child: Text('|'),
                          ),
                          LogoLabel(
                            id: player.nation?.eaId,
                            label: player.nation?.name,
                            type: LogoEntity.nation,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              PositionBox(position: player.position),
              SizedBox(width: AppSpacing.space3),
              RatingBox(
                rating: player.overall,
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
