import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/glass/glass.dart';
import 'package:core_design/src/molecules/stat/stat.dart';
import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  const StatCard({
    super.key,
    required this.paceRating,
    required this.shootRating,
    required this.passRating,
    required this.dribbleRating,
    required this.defendRating,
    required this.physicalRating,
    this.isGK = false,
  });

  /// Speed for GK
  final int paceRating;
  /// Kicking for GK
  final int shootRating;
  /// Handling for GK
  final int passRating;
  /// Reflexes for GK
  final int dribbleRating;
  /// Positioning for GK
  final int defendRating;
  /// Diving for GK
  final int physicalRating;
  final bool isGK;

  @override
  Widget build(BuildContext context) {
    return Glass.lessBlur(
      borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
          color: context.colors.backgroundTertiary70.withOpacity(0.2),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppSpacing.space3,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (isGK) ...[
                Stat(label: 'DIV', rating: physicalRating),
                Stat(label: 'HAN', rating: passRating),
                Stat(label: 'KIC', rating: shootRating),
                Stat(label: 'REF', rating: dribbleRating),
                Stat(label: 'SPD', rating: paceRating),
                Stat(label: 'POS', rating: defendRating),
              ] else ...[
                Stat(label: 'PAC', rating: paceRating),
                Stat(label: 'SHO', rating: shootRating),
                Stat(label: 'PAS', rating: passRating),
                Stat(label: 'DRI', rating: dribbleRating),
                Stat(label: 'DEF', rating: defendRating),
                Stat(label: 'PHY', rating: physicalRating),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
