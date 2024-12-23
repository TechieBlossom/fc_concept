import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_player/src/collection/player_collection_page.dart';
import 'package:feature_player/src/details/bloc/all_player_tap_type.dart';
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
    final chemistryStyles = context.read<MetadataBloc>().state.chemistryStyles;
    final positions = context.read<MetadataBloc>().state.positions;
    return BlocProvider<PlayerDetailBloc>(
      create: (_) => di<PlayerDetailBloc>(
        param1: PlayerDetailBlocParams(
          player: player,
          allRoles: roles,
          allPlayStyles: playStyles,
          allChemistryStyles: chemistryStyles,
          allPositions: positions,
        ),
      ),
      child: BlocBuilder<PlayerDetailBloc, PlayerDetailState>(
        builder: (context, state) {
          return Scaffold(
            appBar: PageTitle(
              autoImplyLeading: true,
              action: (state.playerVersions?.isNotEmpty ?? false)
                  ? 'Other Versions'
                  : null,
              onAction: (state.playerVersions?.isNotEmpty ?? false)
                  ? () {
                      showAppBottomSheet(
                        context,
                        padding: EdgeInsets.zero,
                        child: VersionsSheet(
                          players: state.playerVersions!,
                          onTap: (eaId) => context.read<PlayerDetailBloc>().add(
                                VersionTap(
                                  playerId: eaId,
                                ),
                              ),
                        ),
                      );
                    }
                  : null,
            ),
            body: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Space(space: AppSpacing.space4),
                    PlayerHeader(
                      player: state.player,
                      playerPrice: state.playerPrice,
                      priceProcessState: state.priceProcessState,
                      alternativePositions: state.alternativePositions,
                      onRarityTap: () {},
                      // onRarityTap: () => context.read<PlayerDetailBloc>().add(
                      //       RarityTap(
                      //         params: PlayerCollectionPageParams(
                      //           type: PlayerCollectionType.rarity,
                      //           data: state.player.rarity,
                      //         ),
                      //       ),
                      //     ),
                    ),
                    if (state.playerRoles?.isNotEmpty ?? false)
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          start: AppSpacing.space4,
                          end: AppSpacing.space4,
                          bottom: AppSpacing.space4,
                        ),
                        child: RoleLayout(
                          roles: state.playerRoles!,
                          onRoleTap: (role) =>
                              context.read<PlayerDetailBloc>().add(
                                    RoleTap(role: role),
                                  ),
                          onAllPlayersTap: (role) =>
                              context.read<PlayerDetailBloc>().add(
                                    AllPlayersTap(
                                      type: RolePlayerTapType(data: role),
                                    ),
                                  ),
                        ),
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
                          onPlayStyleTap: (playStyle) =>
                              context.read<PlayerDetailBloc>().add(
                                    PlayStyleTap(playStyle: playStyle),
                                  ),
                          onAllPlayersTap: (playStyle) => context
                              .read<PlayerDetailBloc>()
                              .add(
                                AllPlayersTap(
                                  type: PlayStylePlayerTapType(data: playStyle),
                                ),
                              ),
                        ),
                      ),
                    ChemistryStyleCard(
                      allChemistryStyles: player.isGk
                          ? chemistryStyles.where((e) => e.isGkStyle).toList()
                          : chemistryStyles.where((e) => !e.isGkStyle).toList(),
                      selectedChemistryModifier:
                          state.selectedChemistryModifier,
                      selectedChemistryStyle: state.selectedChemistryStyle,
                      onResult: (modifier, style) =>
                          context.read<PlayerDetailBloc>().add(
                                UpdateChemistryStyle(
                                  chemistryModifier: modifier,
                                  chemistryStyle: style,
                                ),
                              ),
                      onClear: () => context.read<PlayerDetailBloc>().add(
                            ClearChemistryStyle(),
                          ),
                      onTap: () => context.read<PlayerDetailBloc>().add(
                            ChemistryTap(),
                          ),
                    ),
                    if (state.player.attributeAcceleration != null)
                      if (player.isGk)
                        Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: AppSpacing.space4,
                          ),
                          child: GkAttributesLayout(
                            player: state.player,
                            chemistryBoost: state.normalizedChemistryBoost,
                            chemistryBoostFaceValues:
                                state.chemistryBoostFaceValues,
                            chemistryStyleAccelerate:
                                state.chemistryStyleAccelerate,
                          ),
                        )
                      else
                        Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: AppSpacing.space4,
                          ),
                          child: AttributesLayout(
                            player: state.player,
                            chemistryBoost: state.normalizedChemistryBoost,
                            chemistryBoostFaceValues:
                                state.chemistryBoostFaceValues,
                            chemistryStyleAccelerate:
                                state.chemistryStyleAccelerate,
                            onAccelerateTap: (accelerateType) =>
                                context.read<PlayerDetailBloc>().add(
                                      AccelerateTap(
                                        accelerateType: accelerateType,
                                      ),
                                    ),
                          ),
                        ),
                    if (state.player.league != null)
                      LeagueCard(
                        margin: const EdgeInsets.only(
                          left: AppSpacing.space3,
                          right: AppSpacing.space3,
                          bottom: AppSpacing.space3,
                          top: AppSpacing.space5,
                        ),
                        league: state.player.league!,
                        onTap: () {},
                      ),
                    if (state.player.club != null)
                      ClubCard(
                        margin: const EdgeInsets.only(
                          left: AppSpacing.space3,
                          right: AppSpacing.space3,
                          bottom: AppSpacing.space3,
                        ),
                        club: state.player.club!,
                        onTap: () {},
                      ),
                    if (state.player.nation != null)
                      NationCard(
                        margin: const EdgeInsets.only(
                          left: AppSpacing.space3,
                          right: AppSpacing.space3,
                        ),
                        nation: state.player.nation!,
                        onTap: () {},
                      ),
                    Space(
                      space: Theme.of(context).platform == TargetPlatform.iOS
                          ? 0
                          : AppSpacing.space5,
                    ),
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
