import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/filter/bloc/filter_bloc.dart';
import 'package:flutter/material.dart';

class PlayStylesFilterItem extends StatelessWidget {
  const PlayStylesFilterItem({super.key, required this.state});

  final FilterState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.space3),
      child: NestedFilterItem(
        title: state.playStyles != null
            ? 'PlayStyles (Tap to change)'
            : 'PlayStyles',
        subtitle: state.playStyles != null
            ? null
            : 'Tap to select PlayStyle(s)',
        selectedPills: state.playStyles
            ?.map(
              (playStyle) =>
              PillItem<PlayStyle>(
                data: playStyle,
                text: playStyle.name,
                isSelected: true,
              ),
        )
            .toList(),
        pillGap: AppSpacing.space3,
        margin: AppSpacing.space5,
        onTap: () =>
            context.read<FilterBloc>().add(
              TapPlayStyle(),
            ),
      ),
    );
  }
}