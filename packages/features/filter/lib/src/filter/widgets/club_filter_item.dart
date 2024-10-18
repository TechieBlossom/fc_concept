import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/filter/bloc/filter_bloc.dart';
import 'package:flutter/material.dart';

class ClubFilterItem extends StatelessWidget {
  const ClubFilterItem({
    super.key,
    required this.state,
  });

  final FilterState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.space3),
      child: NestedFilterItem(
        title: state.leagues != null ? 'League (Tap to change)' : 'League',
        subtitle: state.leagues != null ? null : 'Tap to select League(s)',
        selectedPills: state.leagues
            ?.map(
              (league) => PillItem<NestedFilterLayoutType>(
                data: league,
                text: league.name,
                image: LeagueImage(league: league as League),
                isSelected: true,
              ),
            )
            .toList(),
        pillGap: AppSpacing.space3,
        margin: AppSpacing.space5,
        onTap: () => context.read<FilterBloc>().add(
              TapLeague(),
            ),
      ),
    );
  }
}
