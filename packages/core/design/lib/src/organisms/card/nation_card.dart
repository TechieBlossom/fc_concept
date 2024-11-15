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
    this.size = NationImageSize.small,
  });

  final Nation nation;
  final VoidCallback? onTap;
  final EdgeInsets margin;
  final NationImageSize size;

  double get width => size == NationImageSize.small ? 20 : 40;

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
        leading: NationImage(nation: nation, size: NationImageSize.large),
        title: Text('NATION'),
        titleTextStyle: context.typography.body4.copyWith(
          color: context.colors.contentSecondary,
        ),
        subtitle: Text(nation.name),
        subtitleTextStyle: context.typography.body1.copyWith(
          color: context.colors.contentPrimary,
        ),
        // trailing: Icon(Icons.arrow_forward_ios_rounded, size: 24),
      ),
    );
  }
}
