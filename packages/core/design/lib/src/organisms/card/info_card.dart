import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/glass/glass.dart';
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
    return Glass.lessBlur(
      borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
          color: context.colors.backgroundTertiary70.withOpacity(0.1),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppSpacing.space3,
          ),
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
      ),
    );
  }
}
