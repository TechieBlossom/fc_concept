import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class ShapesContent extends StatelessWidget {
  const ShapesContent({super.key});

  @override
  Widget build(BuildContext context) {
    const radii = [
      smallCorner,
      mediumCorner,
      infiniteCorner,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shapes'),
      ),
      body: Wrap(
        children: [
          ...radii.map(
            (radius) => Container(
              margin: spacingM.all,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: radius.all,
              ),
              width: 160,
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}
