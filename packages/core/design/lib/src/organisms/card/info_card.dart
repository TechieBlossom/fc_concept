import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/info/info.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.age,
    required this.height,
    required this.skills,
    required this.weakFoot,
    required this.workRate,
  });

  final int age;
  final int height;
  final int skills;
  final int weakFoot;
  final String workRate;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: mediumCorner.all,
        color: Theme.of(context).colorScheme.surfaceContainerHighest.withOpacity(0.7),
      ),
      child: Padding(
        padding: spacingM.vertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Info(label: 'AGE', value: age.toString()),
            Info(label: 'HEIGHT', value: '$height CM'),
            Info(
              label: 'SKILLS',
              value: skills.toString(),
              icon: const Icon(Icons.star_rounded),
            ),
            Info(
              label: 'WEAK FOOT',
              value: weakFoot.toString(),
              icon: const Icon(Icons.star_rounded),
            ),
            Info(label: 'WORK RATE', value: workRate),
          ],
        ),
      ),
    );
  }
}
