import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/filter/bloc/filter_bloc.dart';
import 'package:flutter/material.dart';

class RolesFilterItem extends StatelessWidget {
  const RolesFilterItem({super.key, required this.state});

  final FilterState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.space3),
      child: NestedFilterItem(
        title: state.roles != null
            ? 'Roles (Tap to change)'
            : 'Roles',
        subtitle: state.roles != null
            ? null
            : 'Tap to select Roles(s)',
        selectedPills: state.roles
            ?.map(
              (role) =>
              PillItem<Role>(
                data: role,
                text: role.name,
                isSelected: true,
              ),
        )
            .toList(),
        pillGap: AppSpacing.space3,
        margin: AppSpacing.space5,
        onTap: () =>
            context.read<FilterBloc>().add(
              TapRole(),
            ),
      ),
    );
  }
}
