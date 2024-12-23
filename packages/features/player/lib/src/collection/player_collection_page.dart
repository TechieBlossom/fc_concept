import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_player/src/collection/player_collection_bloc.dart';
import 'package:feature_player/src/list/presentation/player_list.dart';
import 'package:flutter/material.dart';
import 'package:utility_di/di.dart';

class PlayerCollectionPageParams {
  const PlayerCollectionPageParams({
    required this.type,
    required this.data,
  });

  final PlayerCollectionType type;
  final dynamic data;
}

class PlayerCollectionPage extends StatelessWidget {
  const PlayerCollectionPage({
    super.key,
    required this.params,
  });

  final PlayerCollectionPageParams params;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Collection'),
      body: BlocProvider(
        create: (_) => di<PlayerCollectionBloc>(param1: params),
        child: BlocBuilder<PlayerCollectionBloc, PlayerCollectionState>(
          builder: (context, state) {
            return Column(
              children: [
                SearchContainer(
                  isLoading: state.processState == ProcessState.loading,
                  onSearch: (query) => context.read<PlayerCollectionBloc>().add(
                        Search(query: query),
                      ),
                  onClearTap: () => context.read<PlayerCollectionBloc>().add(
                        Search(query: ''),
                      ),
                ),
                Expanded(
                  child: PlayerList(
                    processState: state.processState,
                    isPaginating: state.isPaginating,
                    players: state.players,
                    playerListItemBuilder: ({
                      required Player player,
                      VoidCallback? onFavoriteToggle,
                    }) =>
                        PlayerListItem(
                      player: player,
                      onTap: () => context.read<PlayerCollectionBloc>().add(
                            PlayerTap(
                              player: player,
                              resultWithSelection: false,
                            ),
                          ),
                    ),
                    query: state.filterConfiguration?.searchQuery,
                    nextPage: () => context.read<PlayerCollectionBloc>().add(
                          NextPage(),
                        ),
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
