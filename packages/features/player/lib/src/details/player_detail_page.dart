import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_player/src/details/bloc/player_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:utility_di/di.dart';

class PlayerDetailPage extends StatelessWidget {
  const PlayerDetailPage({
    super.key,
    required this.player,
  });

  final Player player;

  @override
  Widget build(BuildContext context) {
    final roles = context.read<MetadataBloc>().state.roles;
    final playStyles = context.read<MetadataBloc>().state.playStyles;
    return BlocProvider<PlayerDetailBloc>(
      create: (_) => di<PlayerDetailBloc>(
        param: PlayerDetailBlocParams(
          player: player,
          allRoles: roles,
          allPlayStyles: playStyles,
        ),
      ),
      child: BlocBuilder<PlayerDetailBloc, PlayerDetailState>(
        builder: (context, state) {
          return Scaffold(
            appBar: PageTitle(
              autoImplyLeading: true,
              action: 'Compare',
              onAction: () {
                context.read<PlayerDetailBloc>().add(
                      CompareTap(),
                    );
              },
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PlayerHeader(
                    player: state.player,
                    playerVersions: state.playerVersions,
                    selectedVersion: state.selectedVersion,
                    onVersionTap: (playerId, versionId) =>
                        context.read<PlayerDetailBloc>().add(
                              VersionTap(
                                playerId: playerId,
                                versionId: versionId,
                              ),
                            ),
                    playerPrice: state.playerPrice,
                  ),
                  if (state.playerRoles?.isNotEmpty ?? false)
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        start: AppSpacing.space4,
                        end: AppSpacing.space4,
                        bottom: AppSpacing.space4,
                      ),
                      child: RoleLayout(roles: state.playerRoles!),
                    ),
                  if (state.playerPlayStyles?.isNotEmpty ?? false)
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        start: AppSpacing.space4,
                        end: AppSpacing.space4,
                        bottom: AppSpacing.space6,
                      ),
                      child: PlayStylesLayout(
                        playStyles: state.playerPlayStyles!,
                        playStylesPlus: state.playerPlayStylesPlus!,
                      ),
                    ),
                  if (state.player.attributeAcceleration != null)
                    if (state.player.position?.shortLabel == 'GK')
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: AppSpacing.space4,
                        ),
                        child: GkAttributesLayout(player: state.player),
                      )
                    else
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: AppSpacing.space4,
                        ),
                        child: AttributesLayout(player: state.player),
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
