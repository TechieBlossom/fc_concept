import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/filter/bloc/filter_bloc.dart';
import 'package:flutter/material.dart';

class RarityFilterItem extends StatelessWidget {
  const RarityFilterItem({
    super.key,
    required this.state,
  });

  final FilterState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.space3),
      child: NestedFilterItem(
        title: (state.rarities?.isEmpty ?? true)
            ? 'Rarity'
            : 'Rarity (Tap to change)',
        subtitle: (state.rarities?.isEmpty ?? true)
            ? 'Tap to select Rarity(s)'
            : null,
        selectedPills: state.rarities
            ?.map(
              (rarity) => PillItem<Rarity>(
                data: rarity,
                text: rarity.name,
                isSelected: true,
              ),
            )
            .toList(),
        pillGap: AppSpacing.space3,
        margin: AppSpacing.space5,
        onTap: () => context.read<FilterBloc>().add(
              TapRarity(),
            ),
      ),
    );
  }
}
