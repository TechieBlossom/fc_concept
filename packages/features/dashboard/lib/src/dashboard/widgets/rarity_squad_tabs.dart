import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_dashboard/src/dashboard/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';

class RaritySquadTabs extends StatelessWidget {
  const RaritySquadTabs({
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
          children: state.raritySquadPlayers.keys
              .map<Widget>((raritySquad) {
                final isSelected = state.raritySquad == raritySquad;
                return Pill(
                  pillItem: PillItem<RaritySquad?>(
                    text: raritySquad?.name ?? 'Recent',
                    data: raritySquad,
                    isSelected: isSelected,
                    onTap: isSelected
                        ? null
                        : () => bloc.add(
                              SwitchRaritySquad(
                                raritySquad: raritySquad,
                              ),
                            ),
                  ),
                );
              })
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
