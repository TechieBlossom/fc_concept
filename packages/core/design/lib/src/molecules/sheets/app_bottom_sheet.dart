import 'package:core_design/src/atoms/app_colors.dart';
import 'package:core_design/src/atoms/app_dimens.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future<T?> showAppBottomSheet<T>(
  BuildContext context, {
  required Widget child,
  EdgeInsets? padding,
}) =>
    showBarModalBottomSheet<T>(
      context: context,
      backgroundColor: context.colors.backgroundSecondary,
      builder: (context) => Material(
        color: context.colors.backgroundSecondary,
        child: Padding(
          padding: padding ??
              EdgeInsets.only(
                left: AppSpacing.space5,
                right: AppSpacing.space5,
                top: AppSpacing.space5,
                bottom: Theme.of(context).platform == TargetPlatform.iOS
                    ? 0
                    : AppSpacing.space5,
              ),
          child: Theme.of(context).platform == TargetPlatform.iOS
              ? SafeArea(
                  child: child,
                  top: false,
                )
              : child,
        ),
      ),
    );
