import 'package:core_design/design.dart';
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
        title: 'Sort Options',
        subtitle: 'Tap to select Sort By and Sort Order',
        pillGap: AppSpacing.space3,
        margin: AppSpacing.space5,
        onTap: () {},
      ),
    );
  }
}
