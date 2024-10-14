import 'dart:async';

import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_player/src/navigation/navigator.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

part 'player_detail_bloc.mapper.dart';
part 'player_detail_event.dart';
part 'player_detail_state.dart';

class PlayerDetailBlocParams {
  const PlayerDetailBlocParams({
    required this.player,
    required this.allRoles,
    required this.allPlayStyles,
  });

  final Player player;
  final List<Role> allRoles;
  final List<PlayStyle> allPlayStyles;
}

@injectable
class PlayerDetailBloc extends Bloc<PlayerDetailEvent, PlayerDetailState> {
  PlayerDetailBloc(
    @factoryParam this.params,
    this._getPlayerDetailsUseCase,
    this._getPlayerVersionsUseCase,
    this._getPlayerByVersionUseCase,
    this._getRolesByIdsUseCase,
    this._getPlayStylesByIdsUseCase,
    this._getPlayerPriceUseCase,
    this._playerNavigator,
  ) : super(PlayerDetailState(player: params.player)) {
    on<Init>((event, emit) => _initial(params.player, emit));
    on<VersionTap>(
      (event, emit) => _versionTap(
        event.playerId,
        event.versionId,
        emit,
      ),
    );
    on<LoadRoles>((event, emit) => _loadRoles(event, emit));
    on<LoadPlayStyles>((event, emit) => _loadPlayStyles(event, emit));
    on<LoadVersions>((_, emit) => _loadVersions(emit));
    on<LoadPrice>((_, emit) => _loadPrice(emit));
    on<CompareTap>((_, emit) => _compareTap());

    add(Init(player: params.player));
  }

  final PlayerDetailBlocParams params;
  final GetPlayerDetailsUseCase _getPlayerDetailsUseCase;
  final GetPlayerVersionsUseCase _getPlayerVersionsUseCase;
  final GetPlayerByVersionUseCase _getPlayerByVersionUseCase;
  final GetRolesByIdsUseCase _getRolesByIdsUseCase;
  final GetPlayStylesByIdsUseCase _getPlayStylesByIdsUseCase;
  final GetPlayerPriceUseCase _getPlayerPriceUseCase;
  final PlayerNavigator _playerNavigator;

  Future<void> _initial(Player player, Emitter<PlayerDetailState> emit) async {
    final playerResult = await _getPlayerDetailsUseCase(playerId: player.eaId);
    _handlePlayerDetailsResult(playerResult, emit);
  }

  Future<void> _versionTap(
    int playerId,
    int versionId,
    Emitter<PlayerDetailState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedVersion: versionId,
      ),
    );
    final playerResult = await _getPlayerByVersionUseCase(
      playerId: playerId,
      versionId: versionId,
    );
    _handlePlayerDetailsResult(playerResult, emit);
  }

  void _loadRoles(LoadRoles event, Emitter<PlayerDetailState> emit) {
    final roles = _getRolesByIdsUseCase(
      allRoles: params.allRoles,
      eaIds: [
        ...(state.player.rolesPlusPlus ?? []),
        ...(state.player.rolesPlus ?? []),
      ],
    );
    emit(state.copyWith(playerRoles: roles));
  }

  void _loadPlayStyles(LoadPlayStyles event, Emitter<PlayerDetailState> emit) {
    final playStylesPlus = _getPlayStylesByIdsUseCase(
      allPlayStyles: params.allPlayStyles,
      eaIds: [
        ...(state.player.playStylesPlus ?? []),
      ],
    );
    final playStyles = _getPlayStylesByIdsUseCase(
      allPlayStyles: params.allPlayStyles,
      eaIds: [
        ...(state.player.playStyles ?? []),
      ],
    );
    emit(
      state.copyWith(
        playerPlayStylesPlus: playStylesPlus,
        playerPlayStyles: playStyles,
      ),
    );
  }

  // TODO: Load versions can be optimised.
  // Idea: Load all players by baseEaId info when a player is tapped in the list,
  // then show the one which id matches the tapped player.
  // And, store all players in a map with baseEaId as key.
  // This way, we can avoid loading all versions of a player when a player is tapped.
  // We can just show the player from the map.
  // For this, the cache should be there in repository
  Future<void> _loadVersions(Emitter<PlayerDetailState> emit) async {
    final playerVersionsResult =
        await _getPlayerVersionsUseCase(name: state.player.commonName!);
    _handleVersionsResult(playerVersionsResult, emit);
  }

  Future<void> _loadPrice(Emitter<PlayerDetailState> emit) async {
    final priceResult = await _getPlayerPriceUseCase(state.player.eaId);
    switch (priceResult) {
      case Success(data: final playerPrice):
        emit(state.copyWith(playerPrice: playerPrice));
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }
  }

  Future<void> _compareTap() async {
    await _playerNavigator.goToCompare(state.player);
  }

  void _handlePlayerDetailsResult(
    Result<Player> playerResult,
    Emitter<PlayerDetailState> emit,
  ) {
    switch (playerResult) {
      case Success(data: final player):
        emit(state.copyWith(player: player));
        add(LoadRoles());
        add(LoadPlayStyles());
        add(LoadVersions());
        if (player.hasPrice) {
          add(LoadPrice());
        }
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }
  }

  void _handleVersionsResult(
    Result<List<(int, int, String)>?> playerRaritiesResult,
    Emitter<PlayerDetailState> emit,
  ) {
    switch (playerRaritiesResult) {
      case Success(data: final versions):
        emit(
          state.copyWith(
            playerVersions: versions,
            selectedVersion: state.player.rarity.eaId,
          ),
        );
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }
  }
}
