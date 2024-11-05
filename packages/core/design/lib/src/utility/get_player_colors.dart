import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

(int bg, int fg) getPlayerColors(BuildContext context, Player player) {
  (int bg, int fg) colors = (
    int.parse('0xFF${player.rarity.dominantColor}'),
    int.parse('0xFF${player.rarity.textColor?.first}'),
  );

  return colors;
}
