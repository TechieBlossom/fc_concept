import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class Pills extends StatelessWidget {
  const Pills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Pill'),
      body: Padding(
        padding: spacingXL.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: spacingXL.value),
            Pill(
              pillItem: PillItem<String>(
                data: 'League()',
                text: 'Pill',
                isSelected: false,
                onTap: () {},
              ),
            ),
            SizedBox(height: spacingXL.value),
            const Pill(
              pillItem: PillItem<String>(
                data: 'League()',
                text: 'Pill',
                isSelected: true,
              ),
            ),
            SizedBox(height: spacingXL.value),
            const Pill(
              pillItem: PillItem<String>(
                data: 'League()',
                text: 'Pill',
                isSelected: false,
                iconData: Icons.star_outline_rounded,
              ),
            ),
            SizedBox(height: spacingXL.value),
            const Pill(
              pillItem: PillItem<String>(
                data: 'League()',
                text: 'Pill',
                isSelected: true,
                iconData: Icons.star_outline_rounded,
              ),
            ),
            SizedBox(height: spacingXL.value),
            const Pill(
              pillItem: PillItem<String>(
                data: 'League()',
                text: '3',
                isSelected: false,
                hasDigit: true,
              ),
            ),
            SizedBox(height: spacingXL.value),
            const Pill(
              pillItem: PillItem<String>(
                data: 'League()',
                text: '3',
                isSelected: true,
                hasDigit: true,
              ),
            ),
            SizedBox(height: spacingXL.value),
            const Pill(
              pillItem: PillItem<String>(
                data: 'League()',
                text: '3',
                isSelected: false,
                hasDigit: true,
                iconData: Icons.star_outline_rounded,
              ),
            ),
            SizedBox(height: spacingXL.value),
            const Pill(
              pillItem: PillItem<String>(
                data: 'League()',
                text: '3',
                isSelected: true,
                hasDigit: true,
                iconData: Icons.star_outline_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
