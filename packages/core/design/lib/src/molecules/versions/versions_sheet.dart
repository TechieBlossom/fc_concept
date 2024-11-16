import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/organisms/list_item/player_list_item.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:intersperse/intersperse.dart';

class VersionsSheet extends StatelessWidget {
  const VersionsSheet({
    super.key,
    required this.players,
    required this.onTap,
  });

  final List<Player> players;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.space5) -
                const EdgeInsets.only(bottom: AppSpacing.space5),
            child: Text(
              'Select version',
              style: context.typography.body1.copyWith(
                color: context.colors.contentPrimary,
              ),
            ),
          ),
        ),
        ...players.map<Widget>(
          (player) {
            return PlayerListItem(
              player: player,
              showTeams: false,
              onTap: () {
                onTap(player.eaId);
                Navigator.of(context).pop();
              },
            );
          },
        ),
        const SizedBox(height: AppSpacing.space3),
      ].intersperse(const SizedBox(height: AppSpacing.space5)).toList(),
    );
  }
}
