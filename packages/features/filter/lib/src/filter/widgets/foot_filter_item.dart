import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/filter/bloc/filter_bloc.dart';
import 'package:flutter/material.dart';

class FootFilterItem extends StatelessWidget {
  const FootFilterItem({
    super.key,
    required this.state,
  });

  final FilterState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.space3),
      child: NestedFilterItem(
        title: 'Preferred Foot',
        selectedPills: Foot.values.map(
          (foot) {
            final isSelected = state.foots?.contains(foot) ?? false;
            return PillItem<Foot>(
              data: foot,
              image: FootImage(
                foot: foot,
                color: isSelected
                    ? context.colors.onPrimary
                    : context.colors.contentPrimary,
              ),
              text: foot.toValue(),
              isSelected: isSelected,
              onTap: () => context.read<FilterBloc>().add(
                    TapFoot(foot: foot),
                  ),
            );
          },
        ).toList(),
        pillGap: AppSpacing.space3,
        margin: AppSpacing.space5,
        onTap: () {},
      ),
    );
  }
}
