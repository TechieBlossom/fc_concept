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
              id: 19541,
              name: 'Lionel Messi',
              rarity: Rarity(id: 168, name: 'Centurions Icon'),
              rating: 97,
              color: CardColor.gold,
            ),
            onTap: () {},
            onFavoriteToggle: () {},
            isFavorite: true,
          ),
          const SizedBox(height: AppSpacing.space5),
          PlayerListItem(
            player: const Player(
              id: 19541,
              name: 'Lionel Messi',
              rarity: Rarity(
                id: 5,
                name: 'TOTY',
              ),
              rating: 97,
              color: CardColor.gold,
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
