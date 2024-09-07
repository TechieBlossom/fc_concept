import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class PullDowns extends StatelessWidget {
  const PullDowns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Pull Downs'),
      body: Column(
        children: [
          const SizedBox(height: AppSpacing.space5),
          PullDown(
            constrainedWidth: 164,
            heading: 'Champions League',
            items: const [
              (1, 1, 'Champions League'),
              (2, 2, 'TOTY'),
              (3, 3, 'Trailblazers'),
              (4, 4, 'TOTY'),
              (5, 5, 'Trailblazers'),
              (6, 6, 'TOTY'),
              (7, 7, 'Trailblazers'),
            ],
            onItemTapped: (versionId) {},
          ),
          const SizedBox(height: AppSpacing.space5),
          PullDown(
            pullDownButtonType: PullDownButtonType.full,
            heading: 'Champions League',
            items: const [
              (1, 1, 'Champions League'),
              (2, 2, 'TOTY'),
              (3, 3, 'Trailblazers'),
              (4, 4, 'TOTY'),
              (5, 5, 'Trailblazers'),
              (6, 6, 'TOTY'),
              (7, 7, 'Trailblazers'),
            ],
            onItemTapped: (versionId) {},
          ),
        ],
      ),
    );
  }
}
