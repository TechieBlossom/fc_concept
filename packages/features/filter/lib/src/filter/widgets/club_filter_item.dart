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
    if (state.leagues?.isEmpty ?? true) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.space3),
      child: NestedFilterItem(
        title: (state.clubs?.isEmpty ?? true) ? 'Club' : 'Club (Tap to change)',
        subtitle:
            (state.clubs?.isEmpty ?? true) ? 'Tap to select Club(s)' : null,
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
        onTap: state.leagues?.isNotEmpty ?? false
            ? () => context.read<FilterBloc>().add(
                  TapClub(),
                )
            : null,
      ),
    );
  }
}
