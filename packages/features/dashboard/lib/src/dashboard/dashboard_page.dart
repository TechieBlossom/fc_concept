import 'package:core_design/design.dart' hide Switch;
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
            appBar: AppBar(
              centerTitle: false,
              title: const Text('FUT Maidaan'),
              titleTextStyle: context.typography.title3.copyWith(
                color: context.colors.contentPrimary,
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.search_rounded),
                  onPressed: () =>
                      context.read<DashboardBloc>().add(SearchTap()),
                ),
              ],
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Indices(state: state),
                    const SizedBox(height: AppSpacing.space4),
                    CheapestPlayerByRatingCard(
                      onTap: () => context.read<DashboardBloc>().add(
                            CheapestByPlayerRatingTap(),
                          ),
                    ),
                    const SizedBox(height: AppSpacing.space4),
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
                            PlayerTap(player: player, fromSbc: true),
                          ),
                    ),
                    const SizedBox(height: AppSpacing.space6),
                    PlayersGrid(
                      isLoading: state.processState == ProcessState.loading ||
                          state.positionalPlayersProcessState ==
                              ProcessState.loading,
                      players: switch (state.positionGroup) {
                        Forwards() => state.attackPlayers,
                        Midfielders() => state.midfielderPlayers,
                        Defenders() => state.defencePlayers,
                        Goalkeepers() => state.goalKeeperPlayers,
                      },
                      heading: 'High-Rated Players',
                      pills: PositionGroupTabs(state: state),
                      trailing: InkWell(
                        onTap: () => context.read<DashboardBloc>().add(
                              ToggleIcons(),
                            ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          spacing: AppSpacing.space2,
                          children: [
                            Text(
                              'Icons',
                              style: context.typography.body1.copyWith(
                                color: context.colors.contentSecondary,
                              ),
                            ),
                            Icon(
                              state.showIcons
                                  ? Icons.visibility_rounded
                                  : Icons.visibility_off_rounded,
                              size: 16,
                              color: context.colors.contentSecondary,
                            ),
                          ],
                        ),
                      ),
                      onTap: (player) => context.read<DashboardBloc>().add(
                            PlayerTap(player: player),
                          ),
                    ),
                    const SizedBox(height: AppSpacing.space6),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
