import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_player/src/list/presentation/player_list.dart';
import 'package:feature_player/src/rating/bloc/players_list_by_rating_bloc.dart';
import 'package:flutter/material.dart';
import 'package:utility_di/di.dart';

class PlayersListByRatingPage extends StatelessWidget {
  const PlayersListByRatingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlayersListByRatingBloc>(
      create: (context) => di<PlayersListByRatingBloc>(),
      child: BlocBuilder<PlayersListByRatingBloc, PlayersListByRatingState>(
        builder: (context, state) {
          return Scaffold(
            appBar:
                PageTitle(title: 'Cheapest players by ${state.rating} rating'),
            body: Column(
              children: [
                Expanded(
                  child: PlayerList(
                    processState: state.processState,
                    isPaginating: state.isPaginating,
                    players: state.players,
                    playerListItemBuilder: ({
                      required Player player,
                      required VoidCallback onFavoriteToggle,
                    }) =>
                        CheapestPlayerByRatingListItem(
                      player: player,
                      onTap: () => context.read<PlayersListByRatingBloc>().add(
                            PlayerTap(player: player),
                          ),
                      onFavoriteToggle: onFavoriteToggle,
                    ),
                    query: '',
                    nextPage: () => context.read<PlayersListByRatingBloc>().add(
                          NextPage(),
                        ),
                  ),
                ),
                Glass.lessBlur(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppSpacing.space6,
                      ),
                      child: Row(
                        children: <Widget>[
                          const Space(
                            space: AppSpacing.space2,
                            orientation: Axis.horizontal,
                          ),
                          for (var i = 99; i >= 50; i--)
                            Pill<int>(
                              pillItem: PillItem(
                                data: i,
                                text: i.toString(),
                                isSelected: state.rating == i,
                                hasDigit: true,
                                onTap: () =>
                                    context.read<PlayersListByRatingBloc>().add(
                                          ChangeRating(rating: i),
                                        ),
                              ),
                            ),
                          const Space(
                            space: AppSpacing.space4,
                            orientation: Axis.horizontal,
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
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
