import 'package:core_design/src/atoms/app_colors.dart';
import 'package:core_design/src/atoms/app_dimens.dart';
import 'package:core_design/src/atoms/app_typography.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class PlayStyleFilterCategoryGroup extends StatelessWidget {
  const PlayStyleFilterCategoryGroup({
    super.key,
    required this.playStyles,
    required this.selectedPlayStyles,
    required this.onPlayStyleTap,
  });

  final List<PlayStyle> playStyles;
  final List<PlayStyle>? selectedPlayStyles;
  final void Function(PlayStyle) onPlayStyleTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: AppSpacing.space4,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: context.colors.backgroundTertiary,
            width: 2,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            playStyles.first.categoryId.titleCase,
            style: context.typography.body1.copyWith(
              color: context.colors.contentSecondary,
            ),
          ),
          const Space(space: AppSpacing.space3),
          Wrap(
            alignment: WrapAlignment.start,
            spacing: AppSpacing.space4,
            runSpacing: AppSpacing.space4,
            children: [
              ...playStyles
                  .map(
                    (playStyle) => PlayStyleFilterItem(
                      playStyle: playStyle,
                      isSelected:
                          selectedPlayStyles?.contains(playStyle) ?? false,
                      onTap: () => onPlayStyleTap(playStyle),
                    ),
                  )
                  .toList(),
            ],
          ),
        ],
      ),
    );
  }
}
