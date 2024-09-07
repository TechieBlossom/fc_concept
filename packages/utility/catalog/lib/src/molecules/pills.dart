import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class Pills extends StatelessWidget {
  const Pills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Pill'),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.space5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppSpacing.space5),
            Pill(
              pillItem: PillItem<String>(
                data: 'League()',
                text: 'Pill',
                isSelected: false,
                onTap: () {},
              ),
            ),
            const SizedBox(height: AppSpacing.space5),
            const Pill(
              pillItem: PillItem<String>(
                data: 'League()',
                text: 'Pill',
                isSelected: true,
              ),
            ),
            const SizedBox(height: AppSpacing.space5),
            const Pill(
              pillItem: PillItem<String>(
                data: 'League()',
                text: 'Pill',
                isSelected: false,
                iconData: Icons.star_outline_rounded,
              ),
            ),
            const SizedBox(height: AppSpacing.space5),
            const Pill(
              pillItem: PillItem<String>(
                data: 'League()',
                text: 'Pill',
                isSelected: true,
                iconData: Icons.star_outline_rounded,
              ),
            ),
            const SizedBox(height: AppSpacing.space5),
            const Pill(
              pillItem: PillItem<String>(
                data: 'League()',
                text: '3',
                isSelected: false,
                hasDigit: true,
              ),
            ),
            const SizedBox(height: AppSpacing.space5),
            const Pill(
              pillItem: PillItem<String>(
                data: 'League()',
                text: '3',
                isSelected: true,
                hasDigit: true,
              ),
            ),
            const SizedBox(height: AppSpacing.space5),
            const Pill(
              pillItem: PillItem<String>(
                data: 'League()',
                text: '3',
                isSelected: false,
                hasDigit: true,
                iconData: Icons.star_outline_rounded,
              ),
            ),
            const SizedBox(height: AppSpacing.space5),
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
