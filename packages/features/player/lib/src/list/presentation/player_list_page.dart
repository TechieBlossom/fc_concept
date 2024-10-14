import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_drawer/drawer.dart';
import 'package:feature_player/src/list/presentation/bloc/player_list_bloc.dart';
import 'package:feature_player/src/list/presentation/model/player_list_type.dart';
import 'package:feature_player/src/list/presentation/player_list.dart';
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
      create: (context) => di<PlayerListBloc>(param: PlayerListType.all),
      child: BlocBuilder<PlayerListBloc, PlayerListState>(
        builder: (context, state) {
          return Scaffold(
            key: _scaffoldKey,
            appBar: SearchContainer(
              margin: const EdgeInsets.only(
                top: AppSpacing.space7 + AppSpacing.space3,
              ),
              isLoading: state.processState == ProcessState.loading,
              onSearch: (query) => context.read<PlayerListBloc>().add(
                    Search(query: query),
                  ),
              onClearTap: () => context.read<PlayerListBloc>().add(
                    Search(query: ''),
                  ),
              onLeadingTap: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              onFilterTap: () => context.read<PlayerListBloc>().add(
                    FilterTap(),
                  ),
            ),
            drawer: AppDrawer(scaffoldKey: _scaffoldKey),
            body: PlayerList(
              processState: state.processState,
              isPaginating: state.isPaginating,
              players: state.players,
              query: state.query,
              nextPage: () => context.read<PlayerListBloc>().add(
                    NextPage(),
                  ),
            ),
          );
        },
      ),
    );
  }
}
