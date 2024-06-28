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
  });

  final int paceRating;
  final int shootRating;
  final int passRating;
  final int dribbleRating;
  final int defendRating;
  final int physicalRating;

  @override
  Widget build(BuildContext context) {
    return Glass.lessBlur(
      borderRadius: mediumCorner.all,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: mediumCorner.all,
          color: Theme.of(context)
              .colorScheme
              .surfaceContainerHighest
              .withOpacity(0.2),
        ),
        child: Padding(
          padding: spacingM.vertical,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stat(label: 'PAC', rating: paceRating),
              Stat(label: 'SHO', rating: shootRating),
              Stat(label: 'PAS', rating: passRating),
              Stat(label: 'DRI', rating: dribbleRating),
              Stat(label: 'DEF', rating: defendRating),
              Stat(label: 'PHY', rating: physicalRating),
            ],
          ),
        ),
      ),
    );
  }
}
