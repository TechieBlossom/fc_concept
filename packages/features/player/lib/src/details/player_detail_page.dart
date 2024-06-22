import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_player/src/details/bloc/player_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utility_di/di.dart';

class PlayerDetailPage extends StatelessWidget {
  const PlayerDetailPage({
    super.key,
    required this.player,
  });

  final Player player;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlayerDetailBloc>(
      create: (_) => di<PlayerDetailBloc>(param: player),
      child: BlocBuilder<PlayerDetailBloc, PlayerDetailState>(
        builder: (context, state) {
          return Scaffold(
            appBar: PageTitle(
              action: 'Compare',
              onAction: () {
                context.read<PlayerDetailBloc>().add(
                      const PlayerDetailEvent.compareTap(),
                    );
              },
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  PlayerHeader(
                    player: state.player,
                    playerVersions: state.playerVersions,
                    selectedVersion: state.selectedVersion,
                    onVersionTap: (playerId, versionId) =>
                        context.read<PlayerDetailBloc>().add(
                              PlayerDetailEvent.versionTap(
                                playerId: playerId,
                                versionId: versionId,
                              ),
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
