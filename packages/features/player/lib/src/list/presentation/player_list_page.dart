import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_player/src/list/presentation/bloc/player_list_bloc.dart';
import 'package:feature_player/src/list/presentation/player_list.dart';
import 'package:feature_player/src/list/presentation/widgets/filter_container.dart';
import 'package:flutter/material.dart';
import 'package:utility_di/di.dart';

class PlayerListPage extends StatefulWidget {
  const PlayerListPage({super.key});

  @override
  State<PlayerListPage> createState() => _PlayerListPageState();
}

class _PlayerListPageState extends State<PlayerListPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlayerListBloc>(
      create: (context) => di<PlayerListBloc>(),
      child: BlocBuilder<PlayerListBloc, PlayerListState>(
        builder: (context, state) {
          final hasFilters = state.filterConfiguration?.hasFilters() ?? false;
          return Scaffold(
            key: _scaffoldKey,
            body: Stack(
              fit: StackFit.expand,
              children: [
                SafeArea(
                  child: Positioned.fill(
                    child: PlayerList(
                      aboveMargin: hasFilters ? 96 : 72,
                      processState: state.processState,
                      isPaginating: state.isPaginating,
                      players: state.players,
                      query: state.filterConfiguration?.searchQuery,
                      nextPage: () => context.read<PlayerListBloc>().add(
                            NextPage(),
                          ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Glass.lessBlur(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SearchContainer(
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).viewPadding.top,
                          ),
                          isLoading: state.processState == ProcessState.loading,
                          onSearch: (query) =>
                              context.read<PlayerListBloc>().add(
                                    Search(query: query),
                                  ),
                          onClearTap: () => context.read<PlayerListBloc>().add(
                                Search(query: ''),
                              ),
                          onFilterTap: () => context.read<PlayerListBloc>().add(
                                FilterTap(),
                              ),
                        ),
                        if (hasFilters)
                          FilterContainer(
                            filterConfiguration: state.filterConfiguration,
                          ),
                      ],
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
