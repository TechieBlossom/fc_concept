import 'package:core_design/src/atoms/app_dimens.dart';
import 'package:core_design/src/molecules/play_style/play_style_widget.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class PlayStylesLayout extends StatelessWidget {
  const PlayStylesLayout({
    super.key,
    required this.playStyles,
    required this.playStylesPlus,
  });

  final List<PlayStyle> playStyles;
  final List<PlayStyle> playStylesPlus;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: AppSpacing.space4,
      runSpacing: AppSpacing.space4,
      children: [
        ...playStylesPlus.map(
          (playStyle) => PlayStyleWidget(playStyle: playStyle, isPlus: true),
        ),
        ...playStyles
            .map((playStyle) => PlayStyleWidget(playStyle: playStyle))
            .toList(),
      ],
    );
  }
}
