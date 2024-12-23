import 'package:core_design/src/atoms/app_colors.dart';
import 'package:core_design/src/atoms/app_dimens.dart';
import 'package:core_design/src/atoms/app_typography.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:core_design/src/molecules/tappable/app_tappable.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class PlayStyleFilterItem extends StatelessWidget {
  const PlayStyleFilterItem({
    super.key,
    required this.playStyle,
    required this.onTap,
    this.isSelected = false,
  });

  final PlayStyle playStyle;
  final VoidCallback onTap;

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AppTappable(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PlayStyleImage(
            playStyle: playStyle,
            size: PlayStyleImageSize.small,
            isSelected: isSelected,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.space3,
              vertical: AppSpacing.space2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(AppCornerRadius.radius1),
              ),
              color: isSelected
                  ? context.colors.primary
                  : context.colors.backgroundTertiary,
            ),
            child: Text(
              playStyle.name,
              style: context.typography.caption1.copyWith(
                color: isSelected
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
