import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/compare/compare_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CompareListItem extends StatelessWidget {
  const CompareListItem({
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
    final textStyle = context.typography.body5;
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: ColoredBox(
            color: context.colors.backgroundTertiary,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.space3,
                vertical: AppSpacing.space4,
              ),
              child: Text(
                compareItem.label,
                textAlign: TextAlign.start,
                style: context.typography.body4,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.space3),
            child: Row(
              children: [
                Text(
                  _printable(compareItem.first),
                  style: textStyle,
                ),
                if (compareItem.trailing != null) ...[
                  SizedBox(width: AppSpacing.space1),
                  SizedBox(width: 16, height: 16, child: compareItem.trailing),
                ],
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.space3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  _printable(compareItem.second),
                  style: textStyle,
                ),
                if (compareItem.trailing != null) ...[
                  SizedBox(width: AppSpacing.space1),
                  SizedBox(width: 16, height: 16, child: compareItem.trailing),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
