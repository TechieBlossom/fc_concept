import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class PlayerHeaders extends StatelessWidget {
  const PlayerHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PageTitle(title: 'Player Header'),
      body: PlayerHeader(
        player: Player(
          eaId: 158023,
          basePlayerEaId: 158023,
          commonName: 'Lionel Messi',
          imagePath:
              '2025/player-item/25-277643.4fff4733fda8f20c8b0ac109322e43b6056ea634e249826ced756e398346e8bc.webp',
          rarity: Rarity(
            eaId: 12,
            name: 'Icon',
            dominantColor: 'dbdbdb',
            imagePath:
                '2025/rarities-level-0-large/12.1a05046655dc9b106809c4f788f3b1ab9bdb065c05d2d7e1fb7cf6a0031e990b.png',
            compactImagePath:
                '2025/rarities-level-0-small/12.5518fe64a8844e57884532987ec94e29143ea1b164cedcd3bed75cf01b8504a6.png',
            isSpecial: true,
            textColor: ["594d2c", "594d2c", "594d2c"],
            numberOfPlayers: 110,
          ),
          position: Position(
            eaId: 1,
            label: 'ST',
            shortLabel: 'ST',
            positionTypeId: 'attackers',
            positionTypeName: 'Attackers',
          ),
          overall: 97,
        ),
        playerPrice: null,
        alternativePositions: [
          Position(
            eaId: 1,
            label: 'ST',
            shortLabel: 'ST',
            positionTypeId: 'attackers',
            positionTypeName: 'Attackers',
          ),
        ],
      ),
    );
  }
}
