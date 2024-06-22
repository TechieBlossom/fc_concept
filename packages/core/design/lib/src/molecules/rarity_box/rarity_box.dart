import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class RarityBox extends StatelessWidget {
  const RarityBox({
    super.key,
    required this.rarity,
    required this.fg,
    required this.bg,
  });

  final String rarity;
  final int fg;
  final int bg;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: spacingM.horizontal + spacingXS.vertical,
      decoration: BoxDecoration(
        borderRadius: smallCorner.all,
        color: Color(bg),
        border: Border.all(
          color: Color(fg),
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      ),
      child: Text(
        rarity,
        style: context.labelSmall().copyWith(color: Color(fg)),
      ),
    );
  }
}
