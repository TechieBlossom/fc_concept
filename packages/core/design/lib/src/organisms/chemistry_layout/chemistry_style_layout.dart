import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/chemistry/chemistry.dart';
import 'package:core_design/src/molecules/chemistry/chemistry_icon.dart';
import 'package:core_design/src/molecules/chemistry/chemistry_selection_sheet.dart';
import 'package:core_design/src/molecules/sheets/app_bottom_sheet.dart';
import 'package:core_design/src/molecules/space/space.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class ChemistryStyleLayout extends StatelessWidget {
  const ChemistryStyleLayout({
    super.key,
    required this.allChemistryStyles,
    required this.selectedChemistryModifier,
    this.selectedChemistryStyle,
    required this.onResult,
  });

  final List<ChemistryStyle> allChemistryStyles;
  final int? selectedChemistryModifier;
  final ChemistryStyle? selectedChemistryStyle;
  final Function(int?, ChemistryStyle?) onResult;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
        border: Border.all(
          strokeAlign: BorderSide.strokeAlignOutside,
          color: context.colors.backgroundTertiary,
          width: 2,
        ),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: AppSpacing.space4,
        vertical: AppSpacing.space5,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
        onTap: () async {
          final result = await showAppBottomSheet(
            context,
            child: ChemistrySelectionSheet(
              chemistryStyles: allChemistryStyles,
              selectedChemistryModifier: selectedChemistryModifier,
              selectedChemistryStyle: selectedChemistryStyle,
            ),
          );
          if (result != null) {
            onResult(
              result['selectedChemistryModifier'],
              result['selectedChemistryStyle'],
            );
          }
        },
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 32,
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSpacing.space4),
              child: Center(
                child: Text(
                  'Chemistry',
                  style: context.typography.body3,
                ),
              ),
              decoration: BoxDecoration(
                color: context.colors.backgroundTertiary,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(AppCornerRadius.radius2),
                ),
              ),
            ),
            const Space(
              space: AppSpacing.space3,
              orientation: Axis.horizontal,
            ),
            Chemistry(chemistryStyle: selectedChemistryStyle),
            const Spacer(),
            ChemistryIcon(
              chemistryCount: 1,
              isSelected: selectedChemistryModifier == 1,
            ),
            const Space(
              space: AppSpacing.space3,
              orientation: Axis.horizontal,
            ),
            ChemistryIcon(
              chemistryCount: 2,
              isSelected: selectedChemistryModifier == 2,
            ),
            const Space(
              space: AppSpacing.space3,
              orientation: Axis.horizontal,
            ),
            ChemistryIcon(
              chemistryCount: 3,
              isSelected: selectedChemistryModifier == 3,
            ),
            const Spacer(),
            Icon(Icons.arrow_circle_down_rounded),
            const Space(
              space: AppSpacing.space3,
              orientation: Axis.horizontal,
            ),
          ],
        ),
      ),
    );
  }
}
