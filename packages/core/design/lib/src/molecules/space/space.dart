import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  const Space({
    super.key,
    required this.space,
    this.orientation = Axis.vertical,
  });

  final double space;
  final Axis orientation;

  @override
  Widget build(BuildContext context) {
    if (orientation == Axis.vertical) {
      return SizedBox(height: space);
    }
    return SizedBox(width: space);
  }
}
