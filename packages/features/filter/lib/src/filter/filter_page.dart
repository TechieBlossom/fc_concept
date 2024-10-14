import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/filter/bloc/filter_bloc.dart';
import 'package:feature_filter/src/filter/position/position_filter.dart';
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
      create: (_) => di<FilterBloc>(param: existingFilters),
      child: BlocBuilder<FilterBloc, FilterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: PageTitle(
              title: 'Filters',
              action: 'Saved Filters',
              onAction: () {},
            ),
            bottomNavigationBar: BottomButtonLayout(
              buttons: [
                SecondaryButton(
                  text: 'Cancel',
                  onPressed: () {},
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.space3),
                    child: NestedFilterItem(
                      title: 'Sort Options',
                      subtitle: 'Tap to select Sort By and Sort Order',
                      pillGap: AppSpacing.space3,
                      margin: AppSpacing.space5,
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.space3),
                    child: NestedFilterItem(
                      title: state.leagues != null
                          ? 'League (Tap to change)'
                          : 'League',
                      subtitle: state.leagues != null
                          ? null
                          : 'Tap to select League(s)',
                      selectedPills: state.leagues
                          ?.map(
                            (league) => PillItem<NestedFilterLayoutType>(
                              data: league,
                              text: league.name,
                              image: LeagueImage(league: league as League),
                              isSelected: true,
                            ),
                          )
                          .toList(),
                      pillGap: AppSpacing.space3,
                      margin: AppSpacing.space5,
                      onTap: () => context.read<FilterBloc>().add(
                            TapLeague(),
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.space3),
                    child: NestedFilterItem(
                      title:
                          state.clubs != null ? 'Club (Tap to change)' : 'Club',
                      subtitle:
                          state.clubs != null ? null : 'Tap to select Club(s)',
                      selectedPills: state.clubs
                          ?.map(
                            (club) => PillItem<Club>(
                              data: club,
                              text: club.name,
                              image: ClubImage(club: club),
                              isSelected: true,
                            ),
                          )
                          .toList(),
                      pillGap: AppSpacing.space3,
                      margin: AppSpacing.space5,
                      onTap: state.leagues != null
                          ? () => context.read<FilterBloc>().add(
                                TapClub(),
                              )
                          : null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.space3),
                    child: NestedFilterItem(
                      title: state.nations != null
                          ? 'Nation (Tap to change)'
                          : 'Nation',
                      subtitle: state.nations != null
                          ? null
                          : 'Tap to select Nation(s)',
                      selectedPills: state.nations
                          ?.map(
                            (nation) => PillItem<NestedFilterLayoutType>(
                              data: nation,
                              text: nation.name,
                              image: NationImage(nation: nation as Nation),
                              isSelected: true,
                            ),
                          )
                          .toList(),
                      pillGap: AppSpacing.space3,
                      margin: AppSpacing.space5,
                      onTap: () => context.read<FilterBloc>().add(
                            TapNation(),
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.space3),
                    child: NestedFilterItem(
                      title: state.rarities != null
                          ? 'Rarity (Tap to change)'
                          : 'Rarity',
                      subtitle: state.rarities != null
                          ? null
                          : 'Tap to select Rarity(s)',
                      selectedPills: state.rarities
                          ?.map(
                            (rarity) => PillItem<Rarity>(
                              data: rarity,
                              text: rarity.name,
                              isSelected: true,
                            ),
                          )
                          .toList(),
                      pillGap: AppSpacing.space3,
                      margin: AppSpacing.space5,
                      onTap: () => context.read<FilterBloc>().add(
                            TapRarity(),
                          ),
                    ),
                  ),
                  Container(
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
                              initialRange:
                                  existingFilters?.overallRatingRange ??
                                      const RangeValues(47, 99),
                              min: 47,
                              max: 99,
                              onChanged: (range) =>
                                  context.read<FilterBloc>().add(
                                        ChangeOverallRating(
                                          overallRatingRange: range,
                                        ),
                                      ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.space3),
                    child: NestedFilterItem(
                      title: 'Gender',
                      selectedPills: Gender.values
                          .map(
                            (gender) => PillItem<Gender>(
                              data: gender,
                              text: gender.toValue(),
                              iconData: gender.isMale()
                                  ? Icons.male_rounded
                                  : Icons.female_rounded,
                              isSelected:
                                  state.genders?.contains(gender) ?? false,
                              onTap: () => context.read<FilterBloc>().add(
                                    TapGender(gender: gender),
                                  ),
                            ),
                          )
                          .toList(),
                      pillGap: AppSpacing.space3,
                      margin: AppSpacing.space5,
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.space3),
                    child: NestedFilterItem(
                      title: 'Preferred Foot',
                      selectedPills: Foot.values
                          .map(
                            (foot) => PillItem<Foot>(
                              data: foot,
                              text: foot.toValue(),
                              isSelected: state.foots?.contains(foot) ?? false,
                              onTap: () => context.read<FilterBloc>().add(
                                    TapFoot(foot: foot),
                                  ),
                            ),
                          )
                          .toList(),
                      pillGap: AppSpacing.space3,
                      margin: AppSpacing.space5,
                      onTap: () {},
                    ),
                  ),
                  PositionFilter(
                    positions: state.positions,
                    positionGroups: state.positionGroups,
                  ),
                  const SizedBox(height: AppSpacing.space8),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
