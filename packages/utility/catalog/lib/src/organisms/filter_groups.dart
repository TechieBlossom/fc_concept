import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class FilterGroups extends StatelessWidget {
  const FilterGroups({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Filter Groups'),
      body: Column(
        children: [
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
              PillItem(
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
        ],
      ),
    );
  }
}
