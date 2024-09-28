import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class AttributeItem {
  final String attribute;
  final int rating;

  const AttributeItem({
    required this.attribute,
    required this.rating,
  });
}

extension XAttributeItem on AttributeItem {
  Color get ratingColor => switch (this.rating) {
        >= 80 => rating4,
        >= 71 => rating3,
        >= 61 => rating2,
        _ => rating1
      };

  Color get lightRatingColor => switch (this.rating) {
        >= 80 => lightRating4,
        >= 71 => lightRating3,
        >= 61 => lightRating2,
        _ => lightRating1
      };
}
