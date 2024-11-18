import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/filter/bloc/filter_bloc.dart';
import 'package:flutter/material.dart';

class SortFilterItem extends StatelessWidget {
  const SortFilterItem({
    super.key,
    required this.state,
  });

  final FilterState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.space3),
      child: NestedFilterItem(
        title: 'Sorted By Rating',
        selectedPills: SortOrder.values
            .map(
              (order) => PillItem<SortOrder>(
                data: order,
                text: order.title,
                iconData: order == SortOrder.ascending
                    ? Icons.arrow_upward_rounded
                    : Icons.arrow_downward_rounded,
                isSelected: state.sortOrder == order,
                onTap: () => context.read<FilterBloc>().add(
                      TapSortOrder(sortOrder: order),
                    ),
              ),
            )
            .toList(),
        pillGap: AppSpacing.space3,
        margin: AppSpacing.space5,
        onTap: () {},
      ),
    );
  }
}
