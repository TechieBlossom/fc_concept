import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_dashboard/src/dashboard/bloc/dashboard_bloc.dart';
import 'package:feature_dashboard/src/dashboard/widgets/indices.dart';
import 'package:feature_dashboard/src/dashboard/widgets/players_grid.dart';
import 'package:feature_dashboard/src/dashboard/widgets/position_group_tabs.dart';
import 'package:feature_dashboard/src/dashboard/widgets/rarity_squad_tabs.dart';
import 'package:flutter/material.dart';
import 'package:utility_di/di.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardBloc>(
      create: (_) => di<DashboardBloc>(),
      child: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          return Scaffold(
            // appBar: SearchContainer(
            //   margin: const EdgeInsets.only(
            //     top: AppSpacing.space7 + AppSpacing.space3,
            //   ),
            //   onTap: () => context.read<DashboardBloc>().add(SearchTap()),
            // ),
            appBar: AppBar(
              centerTitle: false,
              title: const Text('FC Concept'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.search_rounded),
                  onPressed: () =>
                      context.read<DashboardBloc>().add(SearchTap()),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Indices(state: state),
                  const SizedBox(height: AppSpacing.space6),
                  PlayersGrid(
                    isLoading: state.processState == ProcessState.loading,
                    players: state.raritySquadPlayers[state.raritySquad],
                    pills: RaritySquadTabs(state: state),
                    heading: 'Trending Players',
                    onTap: (player) => context.read<DashboardBloc>().add(
                          PlayerTap(player: player),
                        ),
                  ),
                  const SizedBox(height: AppSpacing.space6),
                  PlayersGrid(
                    isLoading: state.processState == ProcessState.loading,
                    players: state.sbcPlayers,
                    heading: 'SBCs',
                    onTap: (player) => context.read<DashboardBloc>().add(
                          PlayerTap(player: player),
                        ),
                  ),
                  const SizedBox(height: AppSpacing.space6),
                  PlayersGrid(
                    isLoading: state.processState == ProcessState.loading,
                    players: switch (state.positionGroup) {
                      PositionGroup.attack => state.attackPlayers,
                      PositionGroup.midfielder => state.midfielderPlayers,
                      PositionGroup.defence => state.defencePlayers,
                      null => state.goalKeeperPlayers,
                    },
                    heading: 'High-Rated Players',
                    pills: PositionGroupTabs(state: state),
                    onTap: (player) => context.read<DashboardBloc>().add(
                          PlayerTap(player: player),
                        ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
