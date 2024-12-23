import 'package:core_design/design.dart';
import 'package:core_design/src/molecules/tappable/app_tappable.dart';
import 'package:flutter/material.dart';

class RarityBox extends StatelessWidget {
  const RarityBox({
    super.key,
    required this.rarity,
    required this.fg,
    required this.bg,
    this.onTap,
  });

  final String rarity;
  final int fg;
  final int bg;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return AppTappable(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.space3,
          vertical: AppSpacing.space2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppCornerRadius.radius1),
          color: Color(bg),
          border: Border.all(
            color: Color(fg),
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
        child: Text(
          rarity,
          style: context.typography.body4.copyWith(color: Color(fg)),
        ),
      ),
    );
  }
}
