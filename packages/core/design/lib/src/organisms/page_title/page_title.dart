import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget implements PreferredSize {
  const PageTitle({
    super.key,
    this.title,
    this.isSmall = false,
    this.action,
    this.onAction,
    this.onBack,
  }) : assert(
          (action == null && onAction == null) ||
              (action != null && onAction != null),
        );

  final String? title;
  final bool isSmall;
  final String? action;
  final VoidCallback? onAction;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: context.colors.backgroundPrimary,
      backgroundColor: context.colors.backgroundPrimary,
      centerTitle: onBack == null && onAction == null,
      leading: onBack != null
          ? BackButton(
              onPressed: onBack,
            )
          : null,
      title: title != null ? Text(title!) : null,
      titleTextStyle: isSmall
          ? context.typography.titleSmall
          : context.typography.titleMedium,
      titleSpacing: 0,
      actions: [
        if (action != null)
          Padding(
            padding: const EdgeInsets.only(right: AppSpacing.space5),
            child: SecondaryButton(
              buttonType: isSmall ? ButtonSize.small : ButtonSize.normal,
              text: action!,
              onPressed: onAction,
            ),
          ),
      ],
    );
  }

  @override
  Widget get child => const SizedBox.shrink();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
