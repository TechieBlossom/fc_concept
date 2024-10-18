import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/filter/bloc/filter_bloc.dart';
import 'package:flutter/material.dart';

class OverallRatingFilterItem extends StatelessWidget {
  const OverallRatingFilterItem({super.key, this.existingFilters});

  final FilterConfiguration? existingFilters;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: AppSpacing.space3,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.space5,
            ),
            child: Text(
              'Overall Rating',
              style: context.typography.body3.copyWith(
                color: context.colors.contentSecondary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.space3 - 2,
            ),
            child: SizedBox(
              height: 48,
              child: AppRangeSlider(
                initialRange: existingFilters?.overallRatingRange ??
                    const RangeValues(47, 99),
                min: 47,
                max: 99,
                onChanged: (range) => context.read<FilterBloc>().add(
                      ChangeOverallRating(
                        overallRatingRange: range,
                      ),
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
