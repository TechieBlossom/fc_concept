import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class Compares extends StatelessWidget {
  const Compares({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Compare'),
      body: Padding(
        padding: spacingXL.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: spacingXL.value),
            Compare(
              compareItem: CompareItem(
                label: 'Last Price',
                first: '10000000',
                second: '900000',
                hasDigit: true,
                icon: Icons.animation_rounded,
                formatter: currencyFormatter,
              ),
            ),
            SizedBox(height: spacingXL.value),
            const Compare(
              compareItem: CompareItem(
                label: 'Age',
                first: '35',
                second: '32',
                hasDigit: true,
              ),
            ),
            SizedBox(height: spacingXL.value),
            const Compare(
              compareItem: CompareItem(
                label: 'Height',
                first: '195 CM',
                second: '192 CM',
                hasDigit: true,
              ),
            ),
            SizedBox(height: spacingXL.value),
            const Compare(
              compareItem: CompareItem(
                label: 'Work Rate',
                first: 'HIGH/MED',
                second: 'MED/LOW',
                hasDigit: true,
              ),
            ),
            SizedBox(height: spacingXL.value),
            const Compare(
              compareItem: CompareItem(
                label: 'PRP',
                first: '50%',
                second: '50%',
                hasDigit: true,
              ),
            ),
            SizedBox(height: spacingXL.value),
            const Compare(
              compareItem: CompareItem(
                label: 'Skills',
                first: '4',
                second: '5',
                hasDigit: true,
                icon: Icons.star_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
