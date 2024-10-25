import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class RatingBoxes extends StatelessWidget {
  const RatingBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PageTitle(title: 'Rating Box'),
      body: Wrap(
        runSpacing: AppSpacing.space5,
        spacing: AppSpacing.space5,
        children: [
          RatingBox(
            rating: 97,
            fg: 0xFFE8DC9A,
            bg: 0xFF00107B,
            size: RatingBoxSize.medium,
          ),
          RatingBox(
            rating: 97,
            fg: 0xFFE8BB0A,
            bg: 0xFF000000,
            size: RatingBoxSize.small,
          ),
          RatingBox(
            rating: 97,
            fg: 0xFFFFFFFF,
            bg: 0xFFFE3433,
            size: RatingBoxSize.medium,
          ),
          RatingBox(
            rating: 97,
            fg: 0xFFEEEEE4,
            bg: 0xFF2F1735,
            size: RatingBoxSize.medium,
          ),
          RatingBox(
            rating: 97,
            fg: 0xFF1A210C,
            bg: 0xFFDCE009,
            size: RatingBoxSize.medium,
          ),
        ],
      ),
    );
  }
}
