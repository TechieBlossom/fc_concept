import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class Ornaments extends StatelessWidget {
  const Ornaments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Ornament'),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.space5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppSpacing.space5),
            const Ornament(label: 'Prices'),
            const SizedBox(height: AppSpacing.space5),
            const Ornament(label: 'Prices', hasBorder: true),
            const SizedBox(height: AppSpacing.space5),
            Ornament(
              label: 'SHOOTING',
              hasBorder: true,
              borderRadius: BorderRadius.circular(AppCornerRadius.radius2) -
                  mediumCorner.bottomLeft,
            ),
            const SizedBox(height: AppSpacing.space5),
            Ornament(
              label: 'SHOOTING',
              hasBorder: true,
              ornamentType: OrnamentType.full,
              borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
              icon: const Icon(
                Icons.keyboard_arrow_down_rounded,
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
