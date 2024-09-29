import 'package:core_design/src/atoms/app_dimens.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class RoleLayout extends StatelessWidget {
  const RoleLayout({
    super.key,
    required this.roles,
  });

  final List<Role> roles;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: AppSpacing.space4,
      runSpacing: AppSpacing.space4,
      children: roles
          .map(
            (role) => RoleBar(role: role),
          )
          .toList(),
    );
  }
}
