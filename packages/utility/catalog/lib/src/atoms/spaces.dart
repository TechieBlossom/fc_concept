import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class SpacesContent extends StatelessWidget {
  const SpacesContent({super.key});

  @override
  Widget build(BuildContext context) {
    const spaces = [
      AppSpacing.space1,
      AppSpacing.space2,
      AppSpacing.space3,
      AppSpacing.space4,
      AppSpacing.space5,
      AppSpacing.space6,
      AppSpacing.space7,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spaces'),
      ),
      body: Wrap(
        children: [
          ...spaces.map(
            (space) => Container(
              margin: const EdgeInsets.symmetric(
                horizontal: AppSpacing.space5,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
              width: space,
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}
