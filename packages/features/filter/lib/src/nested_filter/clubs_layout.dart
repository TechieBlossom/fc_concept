import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/nested_filter/bloc/nested_filter_bloc.dart';
import 'package:flutter/material.dart';

class ClubsLayout extends StatelessWidget {
  const ClubsLayout({
    super.key,
    required this.clubsMap,
    required this.leagues,
    required this.selectedClubs,
  });

  final List<NestedFilterLayoutType>? leagues;
  final Map<int, List<Club>?>? clubsMap;
  final List<Club>? selectedClubs;

  @override
  Widget build(BuildContext context) {
    final map = clubsMap?.entries.where(
      (entry) => entry.value?.isNotEmpty ?? false,
    );
    return Column(
      children: map?.map(
            (entry) {
              return Padding(
                padding: const EdgeInsets.only(
                  bottom: AppSpacing.space8,
                ),
                child: FilterGroup(
                  title: leagues
                          ?.firstWhere((league) => league.eaId == entry.key)
                          .name ??
                      '',
                  pillItems: entry.value!
                      .map(
                        (club) => PillItem<Club>(
                          data: club,
                          text: club.name,
                          image: ClubImage(club: club),
                          isSelected: selectedClubs?.contains(club) ?? false,
                          onTap: () => context.read<NestedFilterBloc>().add(
                                SelectClub(
                                  club: club,
                                ),
                              ),
                        ),
                      )
                      .toList(),
                ),
              );
            },
          ).toList() ??
          [
            const SizedBox.shrink(),
          ],
    );
  }
}
