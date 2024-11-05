import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/filter/bloc/filter_bloc.dart';
import 'package:flutter/material.dart';

class NationFilterItem extends StatelessWidget {
  const NationFilterItem({
    super.key,
    required this.state,
  });

  final FilterState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.space3),
      child: NestedFilterItem(
        title: (state.nations?.isEmpty ?? true)
            ? 'Nation'
            : 'Nation (Tap to change)',
        subtitle:
            (state.nations?.isEmpty ?? true) ? 'Tap to select Nation(s)' : null,
        selectedPills: state.nations
            ?.map(
              (nation) => PillItem<NestedFilterLayoutType>(
                data: nation,
                text: nation.name,
                image: NationImage(nation: nation as Nation),
                isSelected: true,
              ),
            )
            .toList(),
        pillGap: AppSpacing.space3,
        margin: AppSpacing.space5,
        onTap: () => context.read<FilterBloc>().add(
              TapNation(),
            ),
      ),
    );
  }
}
