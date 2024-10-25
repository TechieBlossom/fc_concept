import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

enum PositionBoxSize {
  small,
  medium,
}

class PositionBox extends StatelessWidget {
  const PositionBox({
    super.key,
    required this.position,
    required this.size,
  });

  final Position? position;
  final PositionBoxSize size;

  @override
  Widget build(BuildContext context) {
    final style = switch (size) {
      PositionBoxSize.small => context.typography.caption2.copyWith(),
      PositionBoxSize.medium => context.typography.body2.copyWith(),
    };

    return Text(
      position?.shortLabel.toUpperCase() ?? '',
      style: style.copyWith(
        color: context.colors.contentPrimary,
      ),
    );
  }
}
