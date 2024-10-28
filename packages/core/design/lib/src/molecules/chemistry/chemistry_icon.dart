import 'package:core_design/src/atoms/app_colors.dart';
import 'package:core_design/src/atoms/app_dimens.dart';
import 'package:flutter/material.dart';

enum ChemistryIconSize {
  small,
  medium,
}

class ChemistryIcon extends StatelessWidget {
  const ChemistryIcon({
    super.key,
    required this.chemistryCount,
    this.isSelected = true,
    this.size = ChemistryIconSize.small,
    this.onTap,
  });

  final int chemistryCount;
  final bool isSelected;
  final ChemistryIconSize size;
  final VoidCallback? onTap;

  double get _size => switch (size) {
        ChemistryIconSize.small => 24,
        ChemistryIconSize.medium => 36,
      };

  double get _boxSize => switch (size) {
        ChemistryIconSize.small => 5,
        ChemistryIconSize.medium => 8,
      };

  double get _horizontal => switch (size) {
        ChemistryIconSize.small => 3,
        ChemistryIconSize.medium => 5,
      };

  double get _centerLeft => switch (size) {
        ChemistryIconSize.small => 7.5,
        ChemistryIconSize.medium => 12,
      };

  double get _top => switch (size) {
        ChemistryIconSize.small => 4,
        ChemistryIconSize.medium => 6,
      };

  double get _bottom => switch (size) {
        ChemistryIconSize.small => 6,
        ChemistryIconSize.medium => 10,
      };

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppCornerRadius.round),
      onTap: onTap,
      child: Container(
        height: _size,
        width: _size,
        decoration: BoxDecoration(
          color: context.colors.backgroundTertiary,
          borderRadius: BorderRadius.circular(AppCornerRadius.round),
          border: Border.all(
            color:
                isSelected ? context.colors.contentPrimary : Colors.transparent,
            width: 2,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: _horizontal,
              bottom: _bottom,
              child: _RotatedSquare(
                key: ValueKey('1'),
                size: _boxSize,
                color: chemistryCount >= 1
                    ? context.colors.chemistryActiveColor
                    : context.colors.chemistryInactiveColor,
              ),
            ),
            Positioned(
              width: _boxSize,
              left: _centerLeft,
              top: _top,
              child: _RotatedSquare(
                key: ValueKey('2'),
                size: _boxSize,
                color: chemistryCount >= 2
                    ? context.colors.chemistryActiveColor
                    : context.colors.chemistryInactiveColor,
              ),
            ),
            Positioned(
              right: _horizontal,
              bottom: _bottom,
              child: _RotatedSquare(
                key: ValueKey('3'),
                size: _boxSize,
                color: chemistryCount == 3
                    ? context.colors.chemistryActiveColor
                    : context.colors.chemistryInactiveColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RotatedSquare extends StatelessWidget {
  const _RotatedSquare({
    super.key,
    required this.color,
    required this.size,
  });

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      key: key,
      angle: 0.785398,
      child: SizedBox.square(
        dimension: size,
        child: ColoredBox(color: color),
      ),
    );
  }
}
