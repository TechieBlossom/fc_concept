import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Nested Filter Items'),
      body: ListView(
        children: [
          const SizedBox(height: AppSpacing.space5),
          NestedFilterItem(
            title: 'Nation',
            subtitle: 'Tap to Select Nation(s)',
            margin: AppSpacing.space4,
            pillGap: AppSpacing.space3,
            onTap: () {},
          ),
          const SizedBox(height: AppSpacing.space5),
          NestedFilterItem(
            title: 'League (Tap to change)',
            selectedPills: const [
              PillItem(
                data: 'League()',
                text: 'Premier League',
                isSelected: true,
              ),
              PillItem(data: 'League()', text: 'Bundesliga', isSelected: true),
              PillItem(data: 'League()', text: 'La Liga', isSelected: true),
              PillItem(data: 'League()', text: 'Ligue 1', isSelected: true),
            ],
            margin: AppSpacing.space4,
            pillGap: AppSpacing.space3,
            onTap: () {},
          ),
          const SizedBox(height: AppSpacing.space5),
          const NestedFilterItem(
            title: 'Club',
            subtitle: 'Tap to Selected League(s)',
            margin: AppSpacing.space5,
            pillGap: AppSpacing.space3,
          ),
          const SizedBox(height: AppSpacing.space5),
          FilterGroup(
            title: 'Top',
            pillItems: [
              PillItem(
                data: 'League()',
                text: 'Premier League',
                isSelected: true,
                onTap: () {},
              ),
              PillItem(
                data: 'League()',
                text: 'Bundesliga',
                isSelected: false,
                onTap: () {},
              ),
              PillItem(
                data: 'League()',
                text: 'La Liga',
                isSelected: true,
                onTap: () {},
              ),
              PillItem(
                data: 'League()',
                text: 'Ligue 1',
                isSelected: false,
                onTap: () {},
              ),
              PillItem<String>(
                data: 'League()',
                text: 'Serie A',
                isSelected: false,
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.space5),
          FilterGroup(
            title: 'Others',
            pillItems: [
              PillItem(
                data: 'League()',
                text: 'NWSL',
                isSelected: true,
                onTap: () {},
              ),
              PillItem(
                data: 'League()',
                text: 'EFL League 2',
                isSelected: false,
                onTap: () {},
              ),
              PillItem(
                data: 'League()',
                text: 'Hero ISL',
                isSelected: true,
                onTap: () {},
              ),
              PillItem(
                data: 'League()',
                text: 'Sudamericana',
                isSelected: false,
                onTap: () {},
              ),
              PillItem(
                data: 'League()',
                text: 'Championship',
                isSelected: false,
                onTap: () {},
              ),
              PillItem(
                data: 'League()',
                text: 'Eridivisie',
                isSelected: false,
                onTap: () {},
              ),
              PillItem(
                data: 'League()',
                text: 'Liga Cyprus',
                isSelected: false,
                onTap: () {},
              ),
              PillItem(
                data: 'League()',
                text: 'Serie BKT',
                isSelected: false,
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.space5),
          PlayerListItem(
            player: const Player(
              eaId: 158023,
              basePlayerEaId: 158023,
              commonName: 'Lionel Messi',
              imagePath:
                  '2025/player-item/25-277643.4fff4733fda8f20c8b0ac109322e43b6056ea634e249826ced756e398346e8bc.webp',
              rarity: Rarity(
                eaId: 3,
                name: 'Team of the Week',
                dominantColor: '0f0d0d',
                imagePath:
                    '2025/rarities-level-3-large/3.29a7b4842c7f0cdb1429aa756fb57da655d429e154d0e012158367bb3ba2546a.png',
                compactImagePath:
                    '2025/rarities-level-3-small/3.469ff66072d586f88e1927b844bfa16fd16b37aa71e555f5b649779d768127c5.png',
                isSpecial: true,
                isBrightColorScheme: false,
                textColor: ["d98b68", "e0e0e0", "f6db7b"],
                numberOfPlayers: 23,
              ),
              overall: 97,
            ),
            onTap: () {},
            onFavoriteToggle: () {},
            isFavorite: true,
          ),
          const SizedBox(height: AppSpacing.space5),
          PlayerListItem(
            player: const Player(
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
                isBrightColorScheme: false,
                textColor: ["594d2c", "594d2c", "594d2c"],
                numberOfPlayers: 110,
              ),
              overall: 97,
            ),
            onTap: () {},
            onFavoriteToggle: () {},
          ),
          const SizedBox(height: AppSpacing.space5),
          const ShimmerListItem(),
          const SizedBox(height: AppSpacing.space5),
          SavedFilterItem(
            title: 'Pacey Forward',
            subtitle: 'Rating: 98-95',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
