import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class IndexBox extends StatelessWidget {
  const IndexBox({
    super.key,
    required this.type,
    required this.current,
    required this.previous,
  });

  final IndexType type;
  final double current;
  final double previous;

  bool get isIncreased => current >= previous;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.space4),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              isIncreased ? lightRating4 : lightRating2,
              isIncreased ? lightRating3 : lightRating1,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
          border: BorderDirectional(
            start: BorderSide(
              color: isIncreased ? rating3 : rating2,
              width: 2,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
            // bottom: BorderSide(
            //   color: isIncreased ? rating4 : rating1,
            //   width: 2,
            //   strokeAlign: BorderSide.strokeAlignInside,
            // ),
            // top: BorderSide(
            //   color: isIncreased ? rating4 : rating1,
            //   width: 2,
            //   strokeAlign: BorderSide.strokeAlignInside,
            // ),
            // end: BorderSide(
            //   color: isIncreased ? rating4 : rating1,
            //   width: 2,
            //   strokeAlign: BorderSide.strokeAlignInside,
            // ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    type.name.toUpperCase(),
                    style: context.typography.body4.copyWith(
                      color: context.colors.contentPrimary,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.space3),
                  Row(
                    children: [
                      AppAssets.images.futCoin.image(width: AppSpacing.space5),
                      const Space(
                        space: AppSpacing.space1,
                        orientation: Axis.horizontal,
                      ),
                      Text(
                        AppFormatter.formatCurrency(current.toInt()),
                        style: context.typography.body2.copyWith(
                          color: context.colors.contentPrimary,
                        ),
                      ),
                      const Space(
                        space: AppSpacing.space3,
                        orientation: Axis.horizontal,
                      ),
                      Text(
                        isIncreased
                            ? AppFormatter.formatPositiveValue((current - previous).toInt())
                            : AppFormatter.formatNegativeValue((current - previous).toInt()),
                        style: context.typography.caption2.copyWith(
                          color: isIncreased ? rating3 : rating2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Icon(
              isIncreased
                  ? Icons.arrow_upward_rounded
                  : Icons.arrow_downward_rounded,
              color: isIncreased ? rating3 : rating2,
            ),
          ],
        ),
      ),
    );
  }
}
