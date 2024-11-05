import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/space/space.dart';
import 'package:flutter/material.dart';

class AccelerateBar extends StatelessWidget {
  const AccelerateBar({
    super.key,
    required this.accelerate,
  });

  final String accelerate;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppCornerRadius.radius1),
        color: context.colors.backgroundTertiary,
        border: BorderDirectional(
          start: BorderSide(
            color: context.colors.contentPrimary,
            width: 2,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.space2,
          vertical: AppSpacing.space3,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'AcceleRATE',
              textAlign: TextAlign.start,
              style: context.typography.caption1.copyWith(
                color: context.colors.contentPrimary,
              ),
            ),
            const Space(space: AppSpacing.space2),
            Text(
              accelerate,
              textAlign: TextAlign.start,
              style: context.typography.body4.copyWith(
                color: context.colors.contentPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
