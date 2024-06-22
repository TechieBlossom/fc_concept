import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

(int bg, int fg) getPlayerColors(BuildContext context, Player player) {
  final defaultBg = Theme.of(context).colorScheme.primary.value;
  final defaultFg = Theme.of(context).colorScheme.surfaceContainerHighest.value;
  (int bg, int fg) colors;
  try {
    if (player.rarity.id == 0) {
      final colorBgFg = rarityColorMap[0];
      colors = switch (player.color) {
        CardColor.bronze => (nonRareBronzeBg, nonRareBronzeFg),
        CardColor.silver => (nonRareSilverBg, nonRareSilverFg),
        _ => (colorBgFg!.bg, colorBgFg.fg),
      };
    } else if (player.rarity.id == 1) {
      final colorBgFg = rarityColorMap[1];
      colors = switch (player.color) {
        CardColor.bronze => (rareBronzeBg, rareBronzeFg),
        CardColor.silver => (rareSilverBg, rareSilverFg),
        _ => (colorBgFg!.bg, colorBgFg.fg),
      };
    } else {
      final colorBgFg = rarityColorMap[player.rarity.id];
      colors = (colorBgFg!.bg, colorBgFg.fg);
    }
  } catch (_) {
    colors = (defaultBg, defaultFg);
  }

  return colors;
}
