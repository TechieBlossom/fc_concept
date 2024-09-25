import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/compare/compare_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Compare extends StatelessWidget {
  const Compare({
    super.key,
    required this.compareItem,
  });

  final CompareItem compareItem;

  String _printable(String? text) {
    if (compareItem.formatter != null) {
      if (text != null) {
        return compareItem.formatter?.format(double.tryParse(text)) ?? '-';
      }
      return '-';
    }

    return text ?? '-';
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = compareItem.hasDigit
        ? context.typography.caption2
        : context.typography.caption1;
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                _printable(compareItem.first),
                style: textStyle,
              ),
              if (compareItem.icon != null) ...[
                SizedBox(width: AppSpacing.space1),
                Icon(compareItem.icon, size: 16),
              ],
            ],
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 160,
            maxWidth: 160,
          ),
          child: Text(
            compareItem.label,
            textAlign: TextAlign.center,
            style: context.typography.body4,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                _printable(compareItem.second),
                style: textStyle,
              ),
              if (compareItem.icon != null) ...[
                SizedBox(width: AppSpacing.space1),
                Icon(compareItem.icon, size: 16),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
