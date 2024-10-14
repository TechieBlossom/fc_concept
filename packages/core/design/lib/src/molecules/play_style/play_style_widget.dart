import 'package:core_design/src/atoms/app_colors.dart';
import 'package:core_design/src/atoms/app_dimens.dart';
import 'package:core_design/src/atoms/app_typography.dart';
import 'package:core_design/src/molecules/image/play_style_image.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class PlayStyleWidget extends StatelessWidget {
  const PlayStyleWidget({
    super.key,
    required this.playStyle,
    this.isPlus = false,
  });

  final PlayStyle playStyle;
  final bool isPlus;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        PlayStyleImage(playStyle: playStyle, isPlus: isPlus),
        Container(
          padding: const EdgeInsets.all(AppSpacing.space2),
          decoration: BoxDecoration(
            gradient: isPlus
                ? LinearGradient(
                    colors: [
                      context.colors.gold2,
                      context.colors.gold,
                    ],
                  )
                : null,
            // color: !isPlus ? context.colors.contentTertiary : null,
            borderRadius: BorderRadius.all(
              Radius.circular(AppCornerRadius.radius1),
            ),
            border: Border.all(
              color: context.colors.contentTertiary,
              width: 1,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
          child: Text(
            playStyle.name,
            style: context.typography.caption1.copyWith(
              color: context.colors.contentPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
