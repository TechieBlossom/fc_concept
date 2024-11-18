import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/molecules.dart';
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
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
        child: Container(
          padding: const EdgeInsets.all(AppSpacing.space5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
            color: context.colors.backgroundTertiary,
          ),
          child: Row(
            children: [
              NationImage(nation: nation, size: NationImageSize.medium),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'NATION',
                      style: context.typography.body5.copyWith(
                        color: context.colors.contentSecondary,
                      ),
                    ),
                    const Space(space: AppSpacing.space2),
                    Text(
                      nation.name,
                      style: context.typography.body3.copyWith(
                        color: context.colors.contentPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              // Icon(Icons.arrow_forward_ios_rounded, size: 24),
            ],
          ),
        ),
      ),
    );
  }
}
