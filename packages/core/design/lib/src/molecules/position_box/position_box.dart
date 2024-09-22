import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class PositionBox extends StatelessWidget {
  const PositionBox({
    super.key,
    required this.position,
  });

  final Position? position;

  @override
  Widget build(BuildContext context) {
    return Text(
      position?.shortLabel.toUpperCase() ?? '',
      style: context.typography.titleMediumDigit,
    );
  }
}
