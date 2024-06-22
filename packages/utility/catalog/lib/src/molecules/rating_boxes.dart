import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class RatingBoxes extends StatelessWidget {
  const RatingBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Rating Box'),
      body: Wrap(
        runSpacing: spacingXL.value,
        spacing: spacingXL.value,
        children: const [
          RatingBox(
            rating: 97,
            fg: 0xFFE8DC9A,
            bg: 0xFF00107B,
          ),
          RatingBox(
            rating: 97,
            fg: 0xFFE8BB0A,
            bg: 0xFF000000,
          ),
          RatingBox(
            rating: 97,
            fg: 0xFFFFFFFF,
            bg: 0xFFFE3433,
          ),
          RatingBox(
            rating: 97,
            fg: 0xFFEEEEE4,
            bg: 0xFF2F1735,
          ),
          RatingBox(
            rating: 97,
            fg: 0xFF1A210C,
            bg: 0xFFDCE009,
          ),
        ],
      ),
    );
  }
}
