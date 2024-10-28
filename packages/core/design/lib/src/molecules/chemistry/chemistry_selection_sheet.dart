import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/button/button_size.dart';
import 'package:core_design/src/molecules/button/primary_button.dart';
import 'package:core_design/src/molecules/button/secondary_button.dart';
import 'package:core_design/src/molecules/chemistry/chemistry_icon.dart';
import 'package:core_design/src/molecules/pill/pill.dart';
import 'package:core_design/src/molecules/pill/pill_item.dart';
import 'package:core_design/src/molecules/space/space.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:intersperse/intersperse.dart';
import 'package:utility_extensions/extensions.dart';

class ChemistrySelectionSheet extends StatefulWidget {
  const ChemistrySelectionSheet({
    super.key,
    required this.chemistryStyles,
    required this.selectedChemistryModifier,
    required this.selectedChemistryStyle,
  });

  final List<ChemistryStyle> chemistryStyles;
  final int? selectedChemistryModifier;
  final ChemistryStyle? selectedChemistryStyle;

  @override
  State<ChemistrySelectionSheet> createState() =>
      _ChemistrySelectionSheetState();
}

class _ChemistrySelectionSheetState extends State<ChemistrySelectionSheet> {
  late int? _selectedChemistryModifier;
  late ChemistryStyle? _selectedChemistryStyle;

  @override
  void initState() {
    super.initState();
    _selectedChemistryStyle = widget.selectedChemistryStyle;
    _selectedChemistryModifier = widget.selectedChemistryModifier;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Select Chemistry Modifier',
              style: context.typography.body1,
            ),
            SecondaryButton(
                buttonType: ButtonSize.small,
                text: 'Clear',
                onPressed: _selectedChemistryStyle == null &&
                        _selectedChemistryModifier == null
                    ? null
                    : () {
                        setState(() {
                          _selectedChemistryModifier = null;
                          _selectedChemistryStyle = null;
                        });
                      }),
          ],
        ),
        const Space(space: AppSpacing.space5),
        Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ChemistryIcon(
                chemistryCount: 1,
                isSelected: _selectedChemistryModifier == 1,
                size: ChemistryIconSize.medium,
                onTap: () {
                  setState(() {
                    _selectedChemistryModifier = 1;
                  });
                },
              ),
              ChemistryIcon(
                chemistryCount: 2,
                isSelected: _selectedChemistryModifier == 2,
                size: ChemistryIconSize.medium,
                onTap: () {
                  setState(() {
                    _selectedChemistryModifier = 2;
                  });
                },
              ),
              ChemistryIcon(
                chemistryCount: 3,
                isSelected: _selectedChemistryModifier == 3,
                size: ChemistryIconSize.medium,
                onTap: () {
                  setState(() {
                    _selectedChemistryModifier = 3;
                  });
                },
              ),
            ]
                .intersperseOuter(
                  const Space(
                    space: AppSpacing.space3,
                    orientation: Axis.horizontal,
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(height: AppSpacing.space5),
        GridView(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: AppSpacing.space3,
            mainAxisSpacing: AppSpacing.space3,
            childAspectRatio: 4,
          ),
          children: [
            for (final chemistryStyle in widget.chemistryStyles)
              Padding(
                padding: const EdgeInsets.only(right: AppSpacing.space3),
                child: Pill(
                  pillItem: PillItem<ChemistryStyle>(
                    data: chemistryStyle,
                    text: chemistryStyle.name.capitalize(),
                    isSelected: _selectedChemistryStyle == chemistryStyle,
                    onTap: () {
                      setState(() {
                        _selectedChemistryStyle = chemistryStyle;
                      });
                    },
                  ),
                ),
              ),
          ],
        ),
        const Space(space: AppSpacing.space5),
        PrimaryButton(
          text: 'Apply',
          onPressed: () => Navigator.pop(context, {
            'selectedChemistryModifier': _selectedChemistryModifier,
            'selectedChemistryStyle': _selectedChemistryStyle,
          }),
        ),
        SecondaryButton(
          text: 'Cancel',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
