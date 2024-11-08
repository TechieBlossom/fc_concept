import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/filter/bloc/filter_bloc.dart';
import 'package:flutter/material.dart';

class GenderFilterItem extends StatelessWidget {
  const GenderFilterItem({
    super.key,
    required this.state,
  });

  final FilterState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.space5),
      child: NestedFilterItem(
        title: 'Gender',
        selectedPills: Gender.values
            .map(
              (gender) => PillItem<Gender>(
                data: gender,
                text: gender.toValue(),
                iconData:
                    gender.isMale() ? Icons.male_rounded : Icons.female_rounded,
                isSelected: state.genders?.contains(gender) ?? false,
                onTap: () => context.read<FilterBloc>().add(
                      TapGender(gender: gender),
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
