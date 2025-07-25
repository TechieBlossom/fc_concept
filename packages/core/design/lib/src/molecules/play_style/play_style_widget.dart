import 'package:core_design/src/atoms/app_colors.dart';
import 'package:core_design/src/atoms/app_dimens.dart';
import 'package:core_design/src/atoms/app_typography.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:core_design/src/molecules/play_style/play_style_info_sheet.dart';
import 'package:core_design/src/molecules/tappable/app_tappable.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

enum PlayStyleWidgetSize {
  small,
  medium,
}

class PlayStyleWidget extends StatelessWidget {
  const PlayStyleWidget({
    super.key,
    required this.playStyle,
    this.size = PlayStyleWidgetSize.small,
    this.isPlus = false,
    this.onTap,
    this.onAllPlayersTap,
  });

  final PlayStyle playStyle;
  final PlayStyleWidgetSize size;
  final bool isPlus;
  final VoidCallback? onTap;
  final VoidCallback? onAllPlayersTap;

  @override
  Widget build(BuildContext context) {
    return AppTappable(
      onTap: () {
        onTap?.call();
        showAppBottomSheet(
          context,
          child: PlayStyleInfoSheet(
            playStyle: playStyle,
            isPlus: isPlus,
            allPlayersTap: onAllPlayersTap,
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PlayStyleImage(
            playStyle: playStyle,
            isPlus: isPlus,
            size: size == PlayStyleWidgetSize.small
                ? PlayStyleImageSize.small
                : PlayStyleImageSize.medium,
          ),
          Container(
            padding: const EdgeInsets.all(AppSpacing.space2),
            decoration: BoxDecoration(
              gradient: isPlus
                  ? LinearGradient(
                      colors: [
                        context.colors.primary.withAlpha(76),
                        context.colors.primary,
                      ],
                    )
                  : null,
              borderRadius: BorderRadius.all(
                Radius.circular(AppCornerRadius.radius1),
              ),
              border: Border.all(
                color: context.colors.contentSecondary,
                width: 1,
                strokeAlign: BorderSide.strokeAlignInside,
              ),
            ),
            child: Text(
              size == PlayStyleWidgetSize.medium
                  ? '${playStyle.categoryId.titleCase} - ${playStyle.name}'
                  : playStyle.name,
              style: size == PlayStyleWidgetSize.small
                  ? context.typography.caption1.copyWith(
                      color: isPlus
                          ? context.colors.onPrimary
                          : context.colors.contentPrimary,
                    )
                  : context.typography.body1.copyWith(
                      color: isPlus
                          ? context.colors.onPrimary
                          : context.colors.contentPrimary,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
