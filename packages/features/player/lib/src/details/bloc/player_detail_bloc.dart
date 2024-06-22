import 'package:core_domain/domain.dart';
import 'package:feature_player/src/navigation/navigator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'player_detail_bloc.freezed.dart';

part 'player_detail_event.dart';

part 'player_detail_state.dart';

@injectable
class PlayerDetailBloc extends Bloc<PlayerDetailEvent, PlayerDetailState> {
  PlayerDetailBloc(
    @factoryParam Player player,
    this._getPlayerDetailsUseCase,
    this._getPlayerVersionsUseCase,
    this._getPlayerByVersionUseCase,
    this._playerNavigator,
  ) : super(
          PlayerDetailState(player: player),
        ) {
    on((PlayerDetailEvent event, emit) async {
      await event.when(
        initial: (player) => _initial(player, emit),
        versionTap: (playerId, versionId) => _versionTap(
          playerId,
          versionId,
          emit,
        ),
        compareTap: () => _compareTap(),
      );
    });

    add(_InitialPlayerDetailEvent(player: player));
  }

  final GetPlayerDetailsUseCase _getPlayerDetailsUseCase;
  final GetPlayerVersionsUseCase _getPlayerVersionsUseCase;
  final GetPlayerByVersionUseCase _getPlayerByVersionUseCase;
  final PlayerNavigator _playerNavigator;

  Future<void> _initial(Player player, Emitter<PlayerDetailState> emit) async {
    final playerResult = await _getPlayerDetailsUseCase(playerId: player.id);
    _handlePlayerDetailsResult(playerResult, emit);
    final playerRaritiesResult =
        await _getPlayerVersionsUseCase(name: player.name);
    _handleVersionsResult(playerRaritiesResult, emit);
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
            selectedVersion: state.player.rarity.id,
          ),
        );
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }
  }
}
