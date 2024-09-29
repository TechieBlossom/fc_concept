import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/price/price_item.dart';
import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
    required this.priceItem,
    this.color,
  });

  final PriceItem priceItem;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final textStyle = context.typography.body5.copyWith(
      color: color ?? Theme.of(context).colorScheme.onTertiaryContainer,
    );
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          priceItem.label,
          textAlign: TextAlign.start,
          style: context.typography.subHead.copyWith(
            color: color ?? Theme.of(context).colorScheme.onTertiaryContainer,
          ),
        ),
        SizedBox(width: AppSpacing.space2),
        Text(
          priceItem.formatter!.format(priceItem.price),
          style: textStyle,
        ),
        SizedBox(width: AppSpacing.space1),
        AppAssets.images.futCoin.image(
          width: AppSpacing.space4,
          height: AppSpacing.space4,
        ),
      ],
    );
  }
}
