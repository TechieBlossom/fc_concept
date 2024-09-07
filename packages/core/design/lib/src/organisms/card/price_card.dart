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
              borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
              color: Color(bg).withOpacity(0.7),
            ),
            margin: const EdgeInsets.only(
              top: AppSpacing.space4,
            ),
            padding: const EdgeInsets.only(
              left: AppSpacing.space4,
              right: AppSpacing.space4,
              top: AppSpacing.space5,
              bottom: AppSpacing.space3,
            ),
            child: Column(
              children: priceItems
                  .map(
                    (priceItem) => Padding(
                      padding: const EdgeInsets.only(
                        bottom: AppSpacing.space1,
                      ),
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
