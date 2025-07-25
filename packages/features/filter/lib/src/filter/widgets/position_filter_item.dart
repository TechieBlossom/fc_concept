import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/filter/bloc/filter_bloc.dart';
import 'package:flutter/material.dart';

class PositionFilterItem extends StatelessWidget {
  const PositionFilterItem({
    super.key,
    required this.positions,
    required this.positionGroups,
  });

  final List<Position>? positions;
  final List<PositionGroup>? positionGroups;

  @override
  Widget build(BuildContext context) {
    final allPositions = context.read<MetadataBloc>().state.positions;
    return Padding(
      padding: const EdgeInsets.only(
        bottom: AppSpacing.space3,
        top: AppSpacing.space4,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: AppSpacing.space5,
              bottom: AppSpacing.space3,
            ),
            child: Text(
              'Position',
              style: context.typography.body3.copyWith(
                color: context.colors.contentPrimary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: AppSpacing.space5,
              right: AppSpacing.space5,
              bottom: AppSpacing.space3,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Forwards(),
                const Midfielders(),
                const Defenders(),
              ]
                  .map<Widget>(
                    (group) => Expanded(
                      child: Pill(
                        pillItem: PillItem<PositionGroup>(
                          data: group,
                          text: group.toString(),
                          isSelected: positionGroups
                                  ?.map((group) => group.toPositionTypeName())
                                  .contains(group.toPositionTypeName()) ??
                              false,
                          onTap: () {
                            context.read<FilterBloc>().add(
                                  TapPositionGroup(
                                    allPositions: allPositions,
                                    positionGroup: group,
                                  ),
                                );
                          },
                        ),
                      ),
                    ),
                  )
                  .intersperse(
                    const Space(
                      space: AppSpacing.space3,
                      orientation: Axis.horizontal,
                    ),
                  )
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.space5),
            child: GridView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                mainAxisSpacing: AppSpacing.space3,
                crossAxisSpacing: AppSpacing.space3,
                childAspectRatio: 2,
              ),
              children: [
                ...allPositions
                    .map(
                      (position) => Pill(
                        pillItem: PillItem<Position>(
                          data: position,
                          text: position.shortLabel,
                          isSelected: positions?.contains(position) ?? false,
                          onTap: () {
                            context.read<FilterBloc>().add(
                                  TapPosition(position: position),
                                );
                          },
                        ),
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
