import 'package:core_design/src/atoms/app_colors.dart';
import 'package:core_design/src/atoms/app_dimens.dart';
import 'package:core_design/src/atoms/app_typography.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class RoleFilterPositionGroup extends StatelessWidget {
  const RoleFilterPositionGroup({
    super.key,
    required this.roles,
    required this.selectedRoles,
    required this.onRoleTap,
  });

  final List<Role> roles;
  final List<Role>? selectedRoles;
  final void Function(Role) onRoleTap;

  List<Role> get plusPLusRoles =>
      roles.where((role) => role.isPlusPlus).toList();

  List<Role> get plusRoles => roles.where((role) => role.isPlus).toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: AppSpacing.space4,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: context.colors.backgroundSecondary,
            width: 2,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            roles.first.fullPositionName,
            style: context.typography.body1.copyWith(
              color: context.colors.contentPrimary,
            ),
          ),
          const Space(space: AppSpacing.space3),
          Wrap(
            alignment: WrapAlignment.start,
            spacing: AppSpacing.space3,
            runSpacing: AppSpacing.space3,
            children: [
              ...plusPLusRoles
                  .map(
                    (role) => Pill<Role>(
                      pillItem: PillItem<Role>(
                        data: role,
                        text: role.name,
                        isSelected: selectedRoles?.contains(role) ?? false,
                        onTap: () => onRoleTap(role),
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
          const Space(space: AppSpacing.space5),
          Wrap(
            alignment: WrapAlignment.start,
            spacing: AppSpacing.space3,
            runSpacing: AppSpacing.space3,
            children: [
              ...plusRoles
                  .map(
                    (role) => Pill<Role>(
                      pillItem: PillItem<Role>(
                        data: role,
                        text: role.name,
                        isSelected: selectedRoles?.contains(role) ?? false,
                        onTap: () => onRoleTap(role),
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
        ],
      ),
    );
  }
}
