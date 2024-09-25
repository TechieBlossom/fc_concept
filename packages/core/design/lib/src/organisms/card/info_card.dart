import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/glass/glass.dart';
import 'package:core_design/src/molecules/info/info.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.foot,
    required this.skills,
    required this.weakFoot,
    required this.weight,
    required this.height,
    required this.age,
  });

  final String? foot;
  final String? skills;
  final String? weakFoot;
  final String? weight;
  final String? height;
  final String? age;

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
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (foot != null)
                Info(
                  label: 'Foot',
                  value: foot!,
                ),
              if (skills != null)
                Info(
                  label: 'Skills',
                  value: skills!,
                  icon: Icon(
                    Icons.star_rounded,
                    size: AppSpacing.space4,
                  ),
                ),
              if (weakFoot != null)
                Info(
                  label: 'W. Foot',
                  value: weakFoot!,
                  icon: Icon(
                    Icons.star_rounded,
                    size: AppSpacing.space4,
                  ),
                ),
              if (age != null) Info(label: 'Age', value: age!),
              if (weight != null) Info(label: 'Weight', value: weight!),
              if (height != null) Info(label: 'Height', value: height!),
            ],
          ),
        ),
      ),
    );
  }
}
