import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/button/primary_button.dart';
import 'package:core_design/src/molecules/role/role_bar.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class RoleInfoSheet extends StatelessWidget {
  const RoleInfoSheet({
    super.key,
    required this.role,
    this.allPlayersTap,
  });

  final Role role;
  final VoidCallback? allPlayersTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: RoleBar(
            role: role,
            size: RoleBarSize.medium,
          ),
        ),
        const SizedBox(height: AppSpacing.space5),
        Text(
          role.description,
          style: context.typography.body3.copyWith(
            color: context.colors.contentSecondary,
            height: 1.2,
          ),
        ),
        const SizedBox(height: AppSpacing.space5),
        // Align(
        //   child: Padding(
        //     padding: const EdgeInsets.all(AppSpacing.space5),
        //     child: LinkButton(
        //       text: 'Show All Players with ${role.name}',
        //       reverseTheme: true,
        //       onPressed: allPlayersTap,
        //     ),
        //   ),
        // ),
        PrimaryButton(
          text: 'Got it!',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
