import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/image/club_image.dart';
import 'package:core_design/src/molecules/image/nation_image.dart';
import 'package:flutter/material.dart';

enum LogoEntity {
  nation,
  club,
}

class LogoLabel extends StatelessWidget {
  const LogoLabel({
    super.key,
    required this.id,
    required this.label,
    required this.type,
  });

  final int? id;
  final String? label;
  final LogoEntity type;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (id != null) ...[
          switch (type) {
            LogoEntity.nation => NationImage(nationId: id!),
            LogoEntity.club => ClubImage(clubId: id!),
          },
          SizedBox(width: spacingS.value),
        ],
        if (label != null)
          Text(
            label!,
            style: context.labelSmall(),
          ),
      ],
    );
  }
}
