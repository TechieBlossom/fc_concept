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
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.space5),
        child: Row(
          children: [
            const Forwards(),
            const Midfielders(),
            const Defenders(),
            const Goalkeepers(),
          ]
              .map<Widget>(
                (positionGroup) => Pill(
                  pillItem: PillItem<PositionGroup>(
                    text: positionGroup.toString(),
                    data: positionGroup,
                    isSelected: state.positionGroup.toString() ==
                        positionGroup.toString(),
                    onTap: state.positionGroup == positionGroup
                        ? null
                        : () => bloc.add(
                              SwitchHighRatedPositionGroup(
                                positionGroup: positionGroup,
                              ),
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
    );
  }
}
