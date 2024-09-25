import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class Stat extends StatelessWidget {
  const Stat({
    super.key,
    required this.label,
    required this.rating,
  });

  final String label;
  final int rating;

  Color get ratingColor {
    if (rating >= 80) {
      return rating4;
    } else if (rating >= 71) {
      return rating3;
    } else if (rating >= 61) {
      return rating2;
    }
    return rating1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label.toUpperCase(),
          style: context.typography.caption2,
        ),
        SizedBox(height: AppSpacing.space2),
        Text(
          rating.toString(),
          style: context.typography.body5.copyWith(
            color: ratingColor,
          ),
        ),
      ],
    );
  }
}
