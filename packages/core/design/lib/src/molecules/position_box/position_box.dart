import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class PositionBox extends StatelessWidget {
  const PositionBox({
    super.key,
    required this.position,
    this.isSmall = false,
  });

  final Position? position;
  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return Text(
      position?.shortLabel.toUpperCase() ?? '',
      style: isSmall
          ? context.typography.body2.copyWith(
              color: context.colors.contentPrimary,
            )
          : context.typography.headline.copyWith(
              color: context.colors.contentPrimary,
            ),
    );
  }
}
