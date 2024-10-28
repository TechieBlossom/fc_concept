import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:core_design/src/utility/app_formatters.dart';
import 'package:flutter/material.dart';

class SbcPriceCard extends StatelessWidget {
  const SbcPriceCard({
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
            label: 'SBC Price',
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
              color: Color(bg).withOpacity(0.8),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppAssets.images.sbcIcon.image(
                  width: 32,
                  height: 32,
                ),
                const Space(space: AppSpacing.space3),
                Text(
                  AppFormatter.formatCurrency(price),
                  textAlign: TextAlign.start,
                  style: context.typography.body2.copyWith(
                    color: Color(fg),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
