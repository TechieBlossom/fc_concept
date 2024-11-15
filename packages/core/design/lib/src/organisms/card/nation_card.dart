import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/image/nation_image.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class NationCard extends StatelessWidget {
  const NationCard({
    super.key,
    required this.nation,
    required this.onTap,
    required this.margin,
  });

  final Nation nation;
  final VoidCallback? onTap;
  final EdgeInsets margin;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: ListTile(
        onTap: onTap,
        tileColor: context.colors.backgroundTertiary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
        ),
        leading: NationImage(nation: nation, size: NationImageSize.medium),
        title: Text('NATION'),
        titleTextStyle: context.typography.body5.copyWith(
          color: context.colors.contentSecondary,
        ),
        subtitle: Text(nation.name),
        subtitleTextStyle: context.typography.body3.copyWith(
          color: context.colors.contentPrimary,
        ),
        // trailing: Icon(Icons.arrow_forward_ios_rounded, size: 24),
      ),
    );
  }
}
