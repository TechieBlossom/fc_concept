import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/accelerate/accelerate_info_sheet.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class AccelerateBar extends StatelessWidget {
  const AccelerateBar({
    super.key,
    required this.accelerateType,
    this.chemistryStyleAccelerate,
  });

  final AccelerateType accelerateType;
  final AccelerateType? chemistryStyleAccelerate;

  bool get accelerateTypeIsDifferent =>
      chemistryStyleAccelerate != null &&
      accelerateType != chemistryStyleAccelerate;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showAppBottomSheet(
          context,
          child: AccelerateInfoSheet(
            accelerateType: chemistryStyleAccelerate ?? accelerateType,
          ),
        );
      },
      child: DecoratedBox(
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
              const Space(space: AppSpacing.space3),
              Text(
                accelerateType.title,
                textAlign: TextAlign.start,
                style: context.typography.body2.copyWith(
                  color: accelerateTypeIsDifferent
                      ? context.colors.contentTertiary
                      : context.colors.contentPrimary,
                  decoration: accelerateTypeIsDifferent
                      ? TextDecoration.lineThrough
                      : null,
                ),
              ),
              if (accelerateTypeIsDifferent) ...[
                const Space(space: AppSpacing.space3),
                Text(
                  chemistryStyleAccelerate!.title,
                  textAlign: TextAlign.start,
                  style: context.typography.body2.copyWith(
                    color: context.colors.contentPrimary,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
