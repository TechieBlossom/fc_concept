import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class UntradablePriceCard extends StatelessWidget {
  const UntradablePriceCard({
    super.key,
    required this.price,
    required this.bg,
    required this.fg,
  });

  final int price;
  final int bg;
  final int fg;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 116,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Ornament(
            label: 'Price',
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppCornerRadius.radius2),
            ),
            hasBorder: false,
            background: bg,
            foreground: fg,
          ),
          Container(
            height: 92,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(AppCornerRadius.radius2),
                bottomLeft: Radius.circular(AppCornerRadius.radius2),
                bottomRight: Radius.circular(AppCornerRadius.radius2),
              ),
              color: Color(bg).withAlpha(204),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'UNTRADABLE',
                  style: context.typography.body2.copyWith(
                    color: Color(fg),
                  ),
                ),
                // const Space(space: AppSpacing.space3),
                // AppAssets.images.futCoin.image(
                //   width: 32,
                //   height: 32,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
