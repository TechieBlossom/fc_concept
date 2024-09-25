import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/image/club_image.dart';
import 'package:core_design/src/molecules/image/league_image.dart';
import 'package:core_design/src/molecules/image/nation_image.dart';
import 'package:flutter/material.dart';

enum LogoEntity {
  nation,
  club,
}

class LogoLabel extends StatelessWidget {
  const LogoLabel({
    super.key,
    required this.imagePath,
    required this.label,
    required this.type,
  });

  final String? imagePath;
  final String? label;
  final LogoEntity type;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (imagePath != null) ...[
          switch (type) {
            LogoEntity.nation => NationImage(imagePath: imagePath!),
            LogoEntity.club => ClubImage(imagePath: imagePath!),
          },
          SizedBox(width: AppSpacing.space2),
        ],
        // if (label != null)
        //   Text(
        //     label!,
        //     style: context.typography.caption1,
        //   ),
      ],
    );
  }
}
