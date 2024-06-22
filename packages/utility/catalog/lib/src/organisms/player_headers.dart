import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class PlayerHeaders extends StatelessWidget {
  const PlayerHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Player Header'),
      body: PlayerHeader(
        player: const Player(
          id: 19541,
          name: 'Lionel Messi',
          rarity: Rarity(id: 5, name: 'TOTY'),
          position: Position.cf,
          rating: 97,
        ),
        playerVersions: null,
        onVersionTap: (_, __) {},
        selectedVersion: null,
      ),
    );
  }
}
