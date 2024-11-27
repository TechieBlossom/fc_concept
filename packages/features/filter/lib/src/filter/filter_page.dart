import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/filter/bloc/filter_bloc.dart';
import 'package:feature_filter/src/filter/widgets/club_filter_item.dart';
import 'package:feature_filter/src/filter/widgets/foot_filter_item.dart';
import 'package:feature_filter/src/filter/widgets/gender_filter_item.dart';
import 'package:feature_filter/src/filter/widgets/league_filter_item.dart';
import 'package:feature_filter/src/filter/widgets/nation_filter_item.dart';
import 'package:feature_filter/src/filter/widgets/overall_rating_filter_item.dart';
import 'package:feature_filter/src/filter/widgets/playstyle_filter_item.dart';
import 'package:feature_filter/src/filter/widgets/position_filter_item.dart';
import 'package:feature_filter/src/filter/widgets/rarity_filter_item.dart';
import 'package:feature_filter/src/filter/widgets/roles_filter_item.dart';
import 'package:feature_filter/src/filter/widgets/sort_filter_item.dart';
import 'package:flutter/material.dart';
import 'package:utility_di/di.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({
    super.key,
    this.existingFilters,
  });

  final FilterConfiguration? existingFilters;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FilterBloc>(
      create: (_) => di<FilterBloc>(param1: existingFilters),
      child: BlocBuilder<FilterBloc, FilterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: const PageTitle(
              title: 'Filters',
              // action: 'Saved Filters',
              // onAction: () {},
            ),
            bottomNavigationBar: BottomButtonLayout(
              buttons: [
                SecondaryButton(
                  text: 'Clear',
                  onPressed: () => context.read<FilterBloc>().add(
                        Clear(),
                      ),
                ),
                PrimaryButton(
                  text: 'Apply',
                  onPressed: () => context.read<FilterBloc>().add(
                        Apply(),
                      ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SortFilterItem(state: state),
                  RolesFilterItem(state: state),
                  PlayStylesFilterItem(state: state),
                  LeagueFilterItem(state: state),
                  ClubFilterItem(state: state),
                  NationFilterItem(state: state),
                  RarityFilterItem(state: state),
                  PositionFilterItem(
                    positions: state.positions,
                    positionGroups: state.positionGroups,
                  ),
                  OverallRatingFilterItem(existingFilters: existingFilters),
                  GenderFilterItem(state: state),
                  FootFilterItem(state: state),
                  const SizedBox(height: AppSpacing.space5),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
