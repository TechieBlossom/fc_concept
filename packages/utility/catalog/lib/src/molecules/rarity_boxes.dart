import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class RarityBoxes extends StatelessWidget {
  const RarityBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PageTitle(title: 'Rarity Box'),
      body: Column(
        children: [
          RarityBox(
            rarity: 'Radioactive',
            fg: 0xFFE8DC9A,
            bg: 0xFF00107B,
          ),
          SizedBox(height: AppSpacing.space5),
          RarityBox(
            rarity: 'Champions League',
            fg: 0xFFE8BB0A,
            bg: 0xFF000000,
          ),
          SizedBox(height: AppSpacing.space5),
          RarityBox(
            rarity: 'Icons Hero',
            fg: 0xFFFFFFFF,
            bg: 0xFFFE3433,
          ),
          SizedBox(height: AppSpacing.space5),
          RarityBox(
            rarity: 'Premium SBC',
            fg: 0xFFEEEEE4,
            bg: 0xFF2F1735,
          ),
          SizedBox(height: AppSpacing.space5),
          RarityBox(
            rarity: 'Trailblazers',
            fg: 0xFF1A210C,
            bg: 0xFFDCE009,
          ),
        ],
      ),
    );
  }
}
