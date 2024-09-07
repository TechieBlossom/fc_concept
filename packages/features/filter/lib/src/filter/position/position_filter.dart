import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/filter/bloc/filter_bloc.dart';
import 'package:feature_filter/src/filter/position/position_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PositionFilter extends StatelessWidget {
  const PositionFilter({
    super.key,
    required this.positions,
    required this.positionGroups,
  });

  final List<Position>? positions;
  final List<PositionGroup>? positionGroups;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: spacingM.bottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: spacingXL.left + spacingS.bottom,
            child: Text(
              'Position',
              style: context.typography.labelSmall.copyWith(
                    color: context.colors.contentSecondary,
                  ),
            ),
          ),
          Padding(
            padding: spacingXL.horizontal + spacingM.bottom,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: PositionGroup.values
                  .map(
                    (group) => Pill(
                      pillItem: PillItem<PositionGroup>(
                        data: group,
                        text: group.name,
                        isSelected: positionGroups?.contains(group) ?? false,
                        onTap: () {
                          context.read<FilterBloc>().add(
                                TapPositionGroup(positionGroup: group),
                              );
                        },
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          Padding(
            padding: spacingXL.horizontal,
            child: GridView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: spacingM.value,
                crossAxisSpacing: spacingM.value,
                childAspectRatio: 90 / 30,
              ),
              children: [
                ...Position.values
                    .map(
                      (position) => Pill(
                        pillItem: PillItem<Position>(
                          data: position,
                          text: position.name,
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
