import 'package:core_design/src/atoms/app_colors.dart';
import 'package:core_design/src/atoms/app_dimens.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future<T?> showAppBottomSheet<T>(
  BuildContext context, {
  required Widget child,
  EdgeInsets? padding,
}) {
  // return showCustomModalBottomSheet<T>(
  //   context: context,
  //   bounce: true,
  //   builder: (context) => Padding(
  //     padding: const EdgeInsets.all(AppSpacing.space5),
  //     child: child,
  //   ),
  //   containerWidget: (
  //     BuildContext context,
  //     Animation<double> animation,
  //     Widget child,
  //   ) {
  //     return SafeArea(
  //       child: Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: AppSpacing.space3),
  //         child: Material(
  //           borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
  //           child: child,
  //         ),
  //       ),
  //     );
  //   },
  // );

  return showCupertinoModalBottomSheet<T>(
    context: context,
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
            ? SafeArea(child: child)
            : child,
      ),
    ),
  );
}
