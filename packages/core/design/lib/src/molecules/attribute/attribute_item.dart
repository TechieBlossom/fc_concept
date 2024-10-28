import 'package:core_design/src/utility/x_int.dart';
import 'package:flutter/material.dart';

class AttributeItem {
  final String attribute;
  final int rating;
  final int? boost;

  const AttributeItem({
    required this.attribute,
    required this.rating,
    required this.boost,
  });
}

extension XAttributeItem on AttributeItem {
  Color get ratingColor => (this.rating + (this.boost ?? 0)).color;

  Color get lightRatingColor => (this.rating + (this.boost ?? 0)).lightColor;
}
