import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class SpacesContent extends StatelessWidget {
  const SpacesContent({super.key});

  @override
  Widget build(BuildContext context) {
    const spaces = [
      spacingXS,
      spacingS,
      spacingM,
      spacingL,
      spacingXL,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spaces'),
      ),
      body: Wrap(
        children: [
          ...spaces.map(
            (space) => Container(
              margin: spacingXL.horizontal,
              decoration: BoxDecoration(
                border: Border.all(
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
              width: space.value,
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}
