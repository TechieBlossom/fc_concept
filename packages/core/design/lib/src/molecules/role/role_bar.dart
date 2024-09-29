import 'package:core_design/src/atoms/app_colors.dart';
import 'package:core_design/src/atoms/app_dimens.dart';
import 'package:core_design/src/atoms/app_typography.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class RoleBar extends StatelessWidget {
  const RoleBar({
    super.key,
    required this.role,
  });

  final Role role;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(AppSpacing.space3),
          decoration: BoxDecoration(
            color: context.colors.contentPrimary,
            borderRadius: BorderRadiusDirectional.horizontal(
              start: Radius.circular(AppCornerRadius.radius1),
            ),
          ),
          child: Text(
            role.name,
            style: context.typography.caption2.copyWith(
              color: context.colors.backgroundPrimary,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(AppSpacing.space3),
          decoration: BoxDecoration(
            color: context.colors.contentTertiary,
            borderRadius: BorderRadiusDirectional.horizontal(
              end: Radius.circular(AppCornerRadius.radius1),
            ),
          ),
          child: Text(
            role.positionName,
            style: context.typography.caption2.copyWith(
              color: context.colors.backgroundPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
