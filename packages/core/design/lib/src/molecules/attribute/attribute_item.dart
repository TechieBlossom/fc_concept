import 'package:core_design/src/utility/x_int.dart';
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
  Color get ratingColor => this.rating.color;

  Color get lightRatingColor => this.rating.lightColor;
}
