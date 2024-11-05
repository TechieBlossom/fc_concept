// import 'package:core_ads/ads.dart';
import 'package:core_ads/ads.dart';
import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_player/src/list/presentation/bloc/player_list_bloc.dart';
import 'package:flutter/material.dart';

const _nextPageShimmers = 3;

typedef PlayerListItemBuilder = Widget Function({
  required Player player,
  required VoidCallback onFavoriteToggle,
});

class PlayerList extends StatefulWidget {
  const PlayerList({
    super.key,
    required this.processState,
    required this.isPaginating,
    required this.players,
    required this.query,
    required this.nextPage,
    this.resultWithSelection = false,
    this.playerListItemBuilder,
  });

  final ProcessState processState;
  final bool isPaginating;
  final List<Player>? players;
  final String? query;
  final VoidCallback? nextPage;
  final bool resultWithSelection;
  final PlayerListItemBuilder? playerListItemBuilder;

  @override
  State<PlayerList> createState() => _PlayerListState();
}

class _PlayerListState extends State<PlayerList> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 150.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll - currentScroll <= _scrollThreshold) {
      widget.nextPage?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.processState) {
      case ProcessState.success:
        final playersLength = widget.players?.length ?? 0;
        final itemCount = widget.isPaginating
            ? playersLength + _nextPageShimmers
            : playersLength;
        return ListView.separated(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: itemCount,
          itemBuilder: (context, index) {
            if (index >= itemCount - _nextPageShimmers && widget.isPaginating) {
              return const ShimmerListItem();
            }

            final player = widget.players?[index];
            if (player != null) {
              if (widget.playerListItemBuilder != null) {
                return widget.playerListItemBuilder!(
                  player: player,
                  onFavoriteToggle: () {},
                );
              }
              return PlayerListItem(
                player: player,
                onTap: () => context.read<PlayerListBloc>().add(
                      PlayerTap(
                        player: player,
                        resultWithSelection: widget.resultWithSelection,
                      ),
                    ),
                onFavoriteToggle: () {},
              );
            }

            return const SizedBox.shrink();
          },
          separatorBuilder: (context, index) {
            if (index != 0 && index % 12 == 0) {
              return const AppBannerAd();
            }
            return const SizedBox(height: 0);
          },
        );
      case ProcessState.loading:
        return const LoadingList();
      case ProcessState.empty:
        if (widget.query?.isNotEmpty ?? false) {
          return InfoMessage(
            message: 'No Players with name',
            highlightMessage: widget.query,
          );
        }
        return const InfoMessage(message: 'No Players found');
      case ProcessState.failure:
        return const SizedBox.shrink();
    }
  }
}
