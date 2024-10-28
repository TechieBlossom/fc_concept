import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_compare/src/assets/assets.gen.dart';
import 'package:feature_compare/src/compare/bloc/compare_bloc.dart';
import 'package:flutter/material.dart';
import 'package:utility_di/di.dart';

class ComparePage extends StatelessWidget {
  const ComparePage({
    super.key,
    required this.player,
  });

  final Player? player;

  List<CompareItem> firstSectionItems(Player? player1, Player? player2) {
    if (player1 == null || player2 == null) {
      return [];
    }
    return [
      CompareItem(
        label: 'Name',
        first: player1.commonName,
        second: player2.commonName,
      ),
      CompareItem(
        label: 'Revision',
        first: player1.rarity.name,
        second: player2.rarity.name,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CompareBloc>(
      create: (_) => di<CompareBloc>(param1: player),
      child: BlocBuilder<CompareBloc, CompareState>(
        builder: (context, state) {
          final player1 = state.player1 ?? player;
          final player2 = state.player2;
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    PlayerPlaceholders(
                      player1: player1,
                      player2: player2,
                      player1Versions: state.player1Versions,
                      player2Versions: state.player2Versions,
                      selectedPlayer1Version: state.selectedPlayer1Version,
                      selectedPlayer2Version: state.selectedPlayer2Version,
                    ),
                    if (player1 != null || player2 != null) ...[
                      ...firstSectionItems(player1, player2).map(
                        (item) => CompareListItem(
                          compareItem: item,
                        ),
                      ),
                    ],
                    const Space(space: AppSpacing.space5),
                    if (player1 != null && player2 != null) ...[
                      CompareAttributesLayout(
                        player1: player1,
                        player2: player2,
                      ),
                    ],
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class PlayerPlaceholders extends StatelessWidget {
  const PlayerPlaceholders({
    super.key,
    required this.player1,
    required this.player2,
    required this.player1Versions,
    required this.player2Versions,
    required this.selectedPlayer1Version,
    required this.selectedPlayer2Version,
  });

  final Player? player1;
  final Player? player2;
  final List<(int, int, String)>? player1Versions;
  final (int, String)? selectedPlayer1Version;
  final List<(int, int, String)>? player2Versions;
  final (int, String)? selectedPlayer2Version;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PlayerPlaceholder(
          index: 0,
          player: player1,
          versions: player1Versions,
          selectedVersion: selectedPlayer1Version,
          onPlayerSelection: () {
            context.read<CompareBloc>().add(
                  SelectPlayer(index: 0),
                );
          },
        ),
        PlayerPlaceholder(
          index: 1,
          player: player2,
          versions: player2Versions,
          selectedVersion: selectedPlayer2Version,
          onPlayerSelection: () {
            context.read<CompareBloc>().add(
                  SelectPlayer(index: 1),
                );
          },
        ),
      ],
    );
  }
}

class PlayerPlaceholder extends StatelessWidget {
  const PlayerPlaceholder({
    super.key,
    required this.index,
    required this.player,
    required this.onPlayerSelection,
    required this.versions,
    required this.selectedVersion,
  });

  final int index;
  final Player? player;
  final List<(int, int, String)>? versions;
  final (int, String)? selectedVersion;
  final VoidCallback onPlayerSelection;

  @override
  Widget build(BuildContext context) {
    if (player == null) {
      return Expanded(
        child: Column(
          children: [
            FeatureAssets.images.playerPlaceholder.image(
              width: 120,
            ),
            PrimaryButton(
              text: 'Select Player',
              buttonType: ButtonSize.small,
              onPressed: onPlayerSelection,
            ),
          ],
        ),
      );
    } else {
      final colors = getPlayerColors(context, player!);
      return Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: AppSpacing.space3),
            PrimaryButton(
              text: 'Change Player',
              buttonType: ButtonSize.small,
              onPressed: onPlayerSelection,
            ),
            const SizedBox(height: AppSpacing.space3),
            Text(
              player!.commonName ?? '',
              style: context.typography.body3,
            ),
            if (versions != null) ...[
              const SizedBox(height: AppSpacing.space3),
              PullDown(
                key: ValueKey(player?.eaId),
                constrainedWidth: 164,
                heading: selectedVersion!.$2,
                items: versions!
                    .map(
                      (version) => (
                        version.$1,
                        version.$2,
                        version.$3,
                      ),
                    )
                    .toList(),
                onItemTapped: (version) {
                  context.read<CompareBloc>().add(
                        SelectVersion(
                          index: index,
                          playerId: version.$1,
                          versionId: version.$2,
                          version: version.$3,
                        ),
                      );
                },
              ),
            ],
            const SizedBox(height: AppSpacing.space3),
            PlayerImage(
              imagePath: player!.imagePath,
              size: PlayerImageSize.medium,
            ),
            Align(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RatingBox(
                    rating: player?.overall,
                    bg: colors.$1,
                    fg: colors.$2,
                    size: RatingBoxSize.medium,
                  ),
                  const SizedBox(width: AppSpacing.space3),
                  PositionBox(
                    position: player?.position,
                    size: PositionBoxSize.medium,
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.space3),
          ],
        ),
      );
    }
  }
}
