import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class Compares extends StatelessWidget {
  const Compares({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Compare'),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.space5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppSpacing.space5),
            CompareListItem(
              compareItem: CompareItem(
                label: 'Last Price',
                first: '10000000',
                second: '900000',
                hasDigit: true,
                trailing: const Icon(Icons.animation_rounded),
                formatter: AppFormatter.currencyFormat,
              ),
            ),
            const SizedBox(height: AppSpacing.space5),
            const CompareListItem(
              compareItem: CompareItem(
                label: 'Age',
                first: '35',
                second: '32',
                hasDigit: true,
              ),
            ),
            const SizedBox(height: AppSpacing.space5),
            const CompareListItem(
              compareItem: CompareItem(
                label: 'Height',
                first: '195 CM',
                second: '192 CM',
                hasDigit: true,
              ),
            ),
            const SizedBox(height: AppSpacing.space5),
            const CompareListItem(
              compareItem: CompareItem(
                label: 'Work Rate',
                first: 'HIGH/MED',
                second: 'MED/LOW',
                hasDigit: true,
              ),
            ),
            const SizedBox(height: AppSpacing.space5),
            const CompareListItem(
              compareItem: CompareItem(
                label: 'PRP',
                first: '50%',
                second: '50%',
                hasDigit: true,
              ),
            ),
            const SizedBox(height: AppSpacing.space5),
            const CompareListItem(
              compareItem: CompareItem(
                label: 'Skills',
                first: '4',
                second: '5',
                hasDigit: true,
                trailing: Icon(Icons.star_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
