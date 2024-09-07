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
    if (rating >= 81) {
      return rating5;
    } else if (rating >= 71) {
      return rating4;
    } else if (rating >= 61) {
      return rating3;
    } else if (rating >= 51) {
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
          style: context.typography.bodySmall,
        ),
        SizedBox(height: spacingS.value),
        Text(
          rating.toString(),
          style: context.typography.titleMediumDigit.copyWith(
                color: ratingColor,
              ),
        ),
      ],
    );
  }
}
