import 'package:core_design/src/atoms/app_colors.dart';
import 'package:core_design/src/atoms/app_dimens.dart';
import 'package:core_design/src/atoms/app_typography.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:core_design/src/molecules/role/role_info_sheet.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

enum RoleBarSize {
  small,
  medium,
}

class RoleBar extends StatelessWidget {
  const RoleBar({
    super.key,
    required this.role,
    this.size = RoleBarSize.small,
    this.onTap,
  });

  final Role role;
  final RoleBarSize size;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final textStyle = size == RoleBarSize.small
        ? context.typography.caption1.copyWith(
            color: context.colors.primary,
          )
        : context.typography.body1.copyWith(
            color: context.colors.primary,
          );
    return InkWell(
      onTap: () {
        onTap?.call();
        showAppBottomSheet(
          context,
          child: RoleInfoSheet(role: role),
        );
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(AppSpacing.space3),
            decoration: BoxDecoration(
              color: context.colors.contentTertiary,
              borderRadius: BorderRadiusDirectional.horizontal(
                start: Radius.circular(AppCornerRadius.radius1),
              ),
            ),
            child: Text(
              role.name,
              style: textStyle,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(AppSpacing.space3),
            decoration: BoxDecoration(
              color: context.colors.primary,
              borderRadius: BorderRadiusDirectional.horizontal(
                end: Radius.circular(AppCornerRadius.radius1),
              ),
            ),
            child: Text(
              role.positionName,
              style: textStyle.copyWith(
                color: context.colors.onPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
