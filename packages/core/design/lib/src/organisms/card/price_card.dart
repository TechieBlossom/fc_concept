import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  const PriceCard({
    super.key,
    required this.priceItems,
    required this.bg,
    required this.fg,
  });

  final List<PriceItem> priceItems;
  final int bg;
  final int fg;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 12 as the ornament height is 24 for compact, so half will be outside
        IntrinsicWidth(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: mediumCorner.all,
              color: Color(bg).withOpacity(0.7),
            ),
            margin: spacingL.top,
            padding: spacingL.horizontal + spacingM.bottom + spacingXL.top,
            child: Column(
              children: priceItems
                  .map(
                    (priceItem) => Padding(
                      padding: spacingXS.bottom,
                      child: Price(
                        priceItem: priceItem,
                        color: Color(fg),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: Ornament(
            label: 'Prices',
            borderRadius: mediumCorner.top + mediumCorner.bottomRight,
            hasBorder: false,
            background: bg,
            foreground: fg,
          ),
        ),
      ],
    );
  }
}
