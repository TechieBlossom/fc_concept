import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/stat/stat_item.dart';
import 'package:flutter/material.dart';

class StatH extends StatelessWidget {
  const StatH({super.key, required this.statItem});

  final StatItem statItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            statItem.label,
            textAlign: TextAlign.start,
            style: context.typography.body4,
          ),
        ),
        Text(
          statItem.value,
          style: context.typography.caption2,
        ),
      ],
    );
  }
}
