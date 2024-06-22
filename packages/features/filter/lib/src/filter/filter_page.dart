import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/filter/bloc/filter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            body: Stack(
              fit: StackFit.expand,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: spacingM.bottom,
                        child: NestedFilterItem(
                          title: 'Sort Options',
                          subtitle: 'Tap to select Sort By and Sort Order',
                          pillGap: spacingM,
                          margin: spacingXL,
                          onTap: () {},
                        ),
                      ),
                      Padding(
                        padding: spacingM.bottom,
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
                                  isSelected: true,
                                ),
                              )
                              .toList(),
                          pillGap: spacingM,
                          margin: spacingXL,
                          onTap: () => context.read<FilterBloc>().add(
                                const FilterEvent.tapLeague(),
                              ),
                        ),
                      ),
                      Padding(
                        padding: spacingM.bottom,
                        child: NestedFilterItem(
                          title: state.clubs != null
                              ? 'Club (Tap to change)'
                              : 'Club',
                          subtitle: state.clubs != null
                              ? null
                              : 'Tap to select Club(s)',
                          selectedPills: state.clubs
                              ?.map(
                                (club) => PillItem<Club>(
                                  data: club,
                                  text: club.name ?? '',
                                  isSelected: true,
                                ),
                              )
                              .toList(),
                          pillGap: spacingM,
                          margin: spacingXL,
                          onTap: state.leagues != null
                              ? () => context.read<FilterBloc>().add(
                                    const FilterEvent.tapClub(),
                                  )
                              : null,
                        ),
                      ),
                      Padding(
                        padding: spacingM.bottom,
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
                                  isSelected: true,
                                ),
                              )
                              .toList(),
                          pillGap: spacingM,
                          margin: spacingXL,
                          onTap: () => context.read<FilterBloc>().add(
                                const FilterEvent.tapNation(),
                              ),
                        ),
                      ),
                      Padding(
                        padding: spacingM.bottom,
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
                          pillGap: spacingM,
                          margin: spacingXL,
                          onTap: () => context.read<FilterBloc>().add(
                                const FilterEvent.tapRarity(),
                              ),
                        ),
                      ),
                      Padding(
                        padding: spacingM.bottom,
                        child: NestedFilterItem(
                          title: 'Gender',
                          selectedPills: Gender.values
                              .map(
                                (gender) => PillItem<Gender>(
                                  data: gender,
                                  text: gender.name,
                                  isSelected:
                                      state.genders?.contains(gender) ?? false,
                                  onTap: () => context.read<FilterBloc>().add(
                                        FilterEvent.tapGender(gender),
                                      ),
                                ),
                              )
                              .toList(),
                          pillGap: spacingM,
                          margin: spacingXL,
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    padding: spacingXL.all + spacingXL.right,
                    color:
                        Theme.of(context).colorScheme.surfaceContainerHighest,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SecondaryButton(
                          text: 'Cancel',
                          onPressed: () {},
                        ),
                        PrimaryButton(
                          text: 'Apply',
                          onPressed: () => context.read<FilterBloc>().add(
                                const FilterEvent.apply(),
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
