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
          SizedBox(height: spacingXL.value),
          NestedFilterItem(
            title: 'Nation',
            subtitle: 'Tap to Select Nation(s)',
            margin: spacingXL,
            pillGap: spacingM,
            onTap: () {},
          ),
          SizedBox(height: spacingXL.value),
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
            margin: spacingXL,
            pillGap: spacingM,
            onTap: () {},
          ),
          SizedBox(height: spacingXL.value),
          const NestedFilterItem(
            title: 'Club',
            subtitle: 'Tap to Selected League(s)',
            margin: spacingXL,
            pillGap: spacingM,
          ),
          SizedBox(height: spacingXL.value),
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
          SizedBox(height: spacingXL.value),
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
          SizedBox(height: spacingXL.value),
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
          SizedBox(height: spacingXL.value),
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
          SizedBox(height: spacingXL.value),
          const ShimmerListItem(),
          SizedBox(height: spacingXL.value),
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
