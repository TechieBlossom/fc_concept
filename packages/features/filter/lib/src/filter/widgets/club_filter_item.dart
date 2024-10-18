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
        title: state.clubs != null ? 'Club (Tap to change)' : 'Club',
        subtitle: state.clubs != null ? null : 'Tap to select Club(s)',
        selectedPills: state.clubs
            ?.map(
              (club) => PillItem<Club>(
                data: club,
                text: club.name,
                isSelected: true,
              ),
            )
            .toList(),
        pillGap: AppSpacing.space3,
        margin: AppSpacing.space5,
        onTap: state.leagues != null
            ? () => context.read<FilterBloc>().add(
                  TapClub(),
                )
            : null,
      ),
    );
  }
}
