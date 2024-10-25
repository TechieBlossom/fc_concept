import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_dashboard/src/dashboard/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';

class PositionGroupTabs extends StatelessWidget {
  const PositionGroupTabs({
    super.key,
    required this.state,
  });

  final DashboardState state;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DashboardBloc>();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.space5),
        child: Row(
          children: <Widget>[
            Pill(
              pillItem: PillItem<PositionGroup>(
                text: 'Attackers',
                data: PositionGroup.attack,
                isSelected: state.positionGroup == PositionGroup.attack,
                onTap: () => bloc.add(
                  SwitchHighRatedPositionGroup(
                    positionGroup: PositionGroup.attack,
                  ),
                ),
              ),
            ),
            Pill(
              pillItem: PillItem<PositionGroup>(
                text: 'Midfielders',
                data: PositionGroup.attack,
                isSelected: state.positionGroup == PositionGroup.midfielder,
                onTap: () => bloc.add(
                  SwitchHighRatedPositionGroup(
                    positionGroup: PositionGroup.midfielder,
                  ),
                ),
              ),
            ),
            Pill(
              pillItem: PillItem<PositionGroup>(
                text: 'Defenders',
                data: PositionGroup.attack,
                isSelected: state.positionGroup == PositionGroup.defence,
                onTap: () => bloc.add(
                  SwitchHighRatedPositionGroup(
                    positionGroup: PositionGroup.defence,
                  ),
                ),
              ),
            ),
            Pill(
              pillItem: PillItem<PositionGroup>(
                text: 'Goalkeepers',
                data: PositionGroup.attack,
                isSelected: state.positionGroup == null,
                onTap: () => bloc.add(SwitchHighRatedPositionGroup()),
              ),
            ),
          ]
              .intersperse(
                const Space(
                  space: AppSpacing.space4,
                  orientation: Axis.horizontal,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
