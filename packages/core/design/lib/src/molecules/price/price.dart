import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/price/price_item.dart';
import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  const Price({
    super.key,
    required this.priceItem,
    this.color,
  });

  final PriceItem priceItem;
  final Color? color;

  String _printable(String text) {
    if (priceItem.formatter != null) {
      return priceItem.formatter!.format(double.parse(text));
    }

    return text;
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = context.typography.labelSmallDigit.copyWith(
          color: color ?? Theme.of(context).colorScheme.onTertiaryContainer,
        );
    return Row(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 30,
            maxWidth: 30,
          ),
          child: Text(
            priceItem.label,
            textAlign: TextAlign.start,
            style: context.typography.bodySmall.copyWith(
                  color: color ??
                      Theme.of(context).colorScheme.onTertiaryContainer,
                ),
          ),
        ),
        Text(
          _printable(priceItem.price),
          style: textStyle,
        ),
        if (priceItem.icon != null) ...[
          SizedBox(width: spacingXS.value),
          Icon(
            priceItem.icon,
            size: 16,
            color: color ?? Theme.of(context).colorScheme.onTertiaryContainer,
          ),
        ],
      ],
    );
  }
}
