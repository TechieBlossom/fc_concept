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
              color: isIncreased ? rating4 : rating1,
              width: 4,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
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
                  Text(
                    current.toInt().toString(),
                    style: context.typography.body2.copyWith(
                      color: context.colors.contentPrimary,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              isIncreased ? Icons.arrow_upward_rounded : Icons.arrow_downward_rounded,
              color: isIncreased ? rating4 : rating1,
            ),
          ],
        ),
      ),
    );
  }
}
