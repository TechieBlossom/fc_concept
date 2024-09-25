import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget implements PreferredSize {
  const PageTitle({
    super.key,
    this.title,
    this.action,
    this.onAction,
    this.onBack,
    this.leading,
    this.autoImplyLeading = false,
  }) : assert(
          (action == null && onAction == null) ||
              (action != null && onAction != null),
        );

  final String? title;
  final String? action;
  final VoidCallback? onAction;
  final VoidCallback? onBack;
  final Widget? leading;
  final bool autoImplyLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: context.colors.backgroundPrimary,
      backgroundColor: context.colors.backgroundPrimary,
      centerTitle: onBack == null && onAction == null,
      leading: leading ??
          (autoImplyLeading
              ? BackButton(
                  onPressed: onBack,
                  color: context.colors.contentPrimary,
                )
              : null),
      title: title != null ? Text(title!) : null,
      titleTextStyle: context.typography.headline,
      titleSpacing: 0,
      actions: [
        if (action != null)
          Padding(
            padding: const EdgeInsets.only(right: AppSpacing.space3),
            child: SecondaryButton(
              buttonType: ButtonSize.small,
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
