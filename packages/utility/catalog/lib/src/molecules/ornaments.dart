import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class Ornaments extends StatelessWidget {
  const Ornaments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Ornament'),
      body: Padding(
        padding: spacingXL.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: spacingXL.value),
            const Ornament(label: 'Prices'),
            SizedBox(height: spacingXL.value),
            const Ornament(label: 'Prices', hasBorder: true),
            SizedBox(height: spacingXL.value),
            Ornament(
              label: 'SHOOTING',
              hasBorder: true,
              borderRadius: mediumCorner.all - mediumCorner.bottomLeft,
            ),
            SizedBox(height: spacingXL.value),
            Ornament(
              label: 'SHOOTING',
              hasBorder: true,
              ornamentType: OrnamentType.full,
              borderRadius: mediumCorner.all,
              icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 16,),
            ),
          ],
        ),
      ),
    );
  }
}
