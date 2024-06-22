import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_compare/src/assets/assets.gen.dart';
import 'package:feature_compare/src/compare/bloc/compare_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utility_di/di.dart';

class ComparePage extends StatelessWidget {
  const ComparePage({
    super.key,
    required this.player,
  });

  final Player? player;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CompareBloc>(
      create: (_) => di<CompareBloc>(param: player),
      child: BlocBuilder<CompareBloc, CompareState>(
        builder: (context, state) {
          final player1 = state.player1 ?? player;
          final player2 = state.player2;
          return Scaffold(
            appBar: const PageTitle(title: 'Compare'),
            body: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  width: MediaQuery.sizeOf(context).width / 2,
                  child: ColoredBox(
                    color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  ),
                ),
                SingleChildScrollView(
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
                        CollapsibleCard(
                          heading: 'Info',
                          compareItems: [
                            CompareItem(
                              label: 'Age',
                              first: player1?.age?.toString() ?? '-',
                              second: player2?.age?.toString() ?? '-',
                              hasDigit: true,
                            ),
                            CompareItem(
                              label: 'Height',
                              first: player1?.height != null
                                  ? '${player1!.height} CM'
                                  : '-',
                              second: player2?.height != null
                                  ? '${player2!.height} CM'
                                  : '-',
                              hasDigit: true,
                            ),
                            CompareItem(
                              label: 'Skills',
                              first: player1?.skillMoves?.toString() ?? '-',
                              second: player2?.skillMoves?.toString() ?? '-',
                              icon: Icons.star_rounded,
                              hasDigit: true,
                            ),
                            CompareItem(
                              label: 'Weak Foot',
                              first: player1?.weakFoot?.toString() ?? '-',
                              second: player2?.weakFoot?.toString() ?? '-',
                              icon: Icons.star_rounded,
                              hasDigit: true,
                            ),
                            CompareItem(
                              label: 'Preferred Foot',
                              first: player1?.foot?.name.toUpperCase() ?? '-',
                              second: player2?.foot?.name.toUpperCase() ?? '-',
                              hasDigit: true,
                            ),
                            CompareItem(
                              label: 'Work rate',
                              first: (player1?.attackWorkRate != null &&
                                      player1?.defenseWorkRate != null)
                                  ? '${player1?.attackWorkRate?.name.toUpperCase()}/${player1?.defenseWorkRate?.name.toUpperCase()}'
                                  : '-',
                              second: (player2?.attackWorkRate != null &&
                                      player2?.defenseWorkRate != null)
                                  ? '${player2?.attackWorkRate?.name.toUpperCase()}/${player2?.defenseWorkRate?.name.toUpperCase()}'
                                  : '-',
                              hasDigit: true,
                            ),
                          ],
                        ),
                        SizedBox(height: spacingM.value),
                        CollapsibleCard(
                          heading: 'Pace',
                          compareItems: [
                            CompareItem(
                              label: 'Overall',
                              first: player1?.pace?.toString() ?? '-',
                              second: player2?.pace?.toString() ?? '-',
                              hasDigit: true,
                            ),
                          ],
                        ),
                        SizedBox(height: spacingM.value),
                        CollapsibleCard(
                          heading: 'Shooting',
                          compareItems: [
                            CompareItem(
                              label: 'Overall',
                              first: player1?.shooting?.toString() ?? '-',
                              second: player2?.shooting?.toString() ?? '-',
                              hasDigit: true,
                            ),
                          ],
                        ),
                        SizedBox(height: spacingM.value),
                        CollapsibleCard(
                          heading: 'Passing',
                          compareItems: [
                            CompareItem(
                              label: 'Overall',
                              first: player1?.passing?.toString() ?? '-',
                              second: player2?.passing?.toString() ?? '-',
                              hasDigit: true,
                            ),
                          ],
                        ),
                        SizedBox(height: spacingM.value),
                        CollapsibleCard(
                          heading: 'Dribbling',
                          compareItems: [
                            CompareItem(
                              label: 'Overall',
                              first: player1?.dribbling?.toString() ?? '-',
                              second: player2?.dribbling?.toString() ?? '-',
                              hasDigit: true,
                            ),
                          ],
                        ),
                        SizedBox(height: spacingM.value),
                        CollapsibleCard(
                          heading: 'Defending',
                          compareItems: [
                            CompareItem(
                              label: 'Overall',
                              first: player1?.defending?.toString() ?? '-',
                              second: player2?.defending?.toString() ?? '-',
                              hasDigit: true,
                            ),
                          ],
                        ),
                        SizedBox(height: spacingM.value),
                        CollapsibleCard(
                          heading: 'Physicality',
                          compareItems: [
                            CompareItem(
                              label: 'Overall',
                              first: player1?.physicality?.toString() ?? '-',
                              second: player2?.physicality?.toString() ?? '-',
                              hasDigit: true,
                            ),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ],
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
                  const CompareEvent.selectPlayer(index: 0),
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
                  const CompareEvent.selectPlayer(index: 1),
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
              buttonType: ButtonType.small,
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
            SizedBox(height: spacingM.value),
            PrimaryButton(
              text: 'Change Player',
              buttonType: ButtonType.small,
              onPressed: onPlayerSelection,
            ),
            SizedBox(height: spacingM.value),
            Text(
              player!.name,
              style: context.bodyMedium(),
            ),
            if (versions != null) ...[
              SizedBox(height: spacingM.value),
              PullDown(
                key: ValueKey(player?.id),
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
                        CompareEvent.selectVersion(
                          index: index,
                          playerId: version.$1,
                          versionId: version.$2,
                          version: version.$3,
                        ),
                      );
                },
              ),
            ],
            SizedBox(height: spacingM.value),
            PlayerImage(
              playerId: player!.id,
              size: PlayerImageSize.medium,
            ),
            Align(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RatingBox(
                    rating: player?.rating,
                    bg: colors.$1,
                    fg: colors.$2,
                  ),
                  SizedBox(width: spacingM.value),
                  Text(
                    player?.position?.name ?? '',
                    style: context.titleMediumDigit().copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                ],
              ),
            ),
            SizedBox(height: spacingM.value),
          ],
        ),
      );
    }
  }
}
