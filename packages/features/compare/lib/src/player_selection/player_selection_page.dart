import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_player/player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utility_di/di.dart';

class PlayerSelectionPage extends StatelessWidget {
  const PlayerSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Compare'),
      body: BlocProvider(
        create: (_) => di<PlayerListBloc>(),
        child: BlocBuilder<PlayerListBloc, PlayerListState>(
          builder: (context, state) {
            return Column(
              children: [
                SearchContainer(
                  isLoading: state.processState == ProcessState.loading,
                  onSearch: (query) => context.read<PlayerListBloc>().add(
                        Search(query: query),
                      ),
                  onFilterTap: null,
                  onLeadingTap: null,
                  onClearTap: () => context.read<PlayerListBloc>().add(
                        Search(query: ''),
                      ),
                ),
                Expanded(
                  child: PlayerList(
                    processState: state.processState,
                    isPaginating: state.isPaginating,
                    players: state.players,
                    query: state.query,
                    nextPage: () => context.read<PlayerListBloc>().add(
                          NextPage(),
                        ),
                    resultWithSelection: true,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
