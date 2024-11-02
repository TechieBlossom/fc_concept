import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_compare/compare.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

part 'compare_bloc.mapper.dart';

part 'compare_event.dart';

part 'compare_state.dart';

@injectable
class CompareBloc extends Bloc<CompareEvent, CompareState> {
  CompareBloc(
    @factoryParam Player? player,
    this._navigator,
    this._getPlayerDetailsUseCase,
  ) : super(CompareState()) {
    on<Init>((event, emit) => _initial(event.player, emit));
    on<SelectPlayer>((event, emit) => _selectPlayer(event.index, emit));

    if (player != null) {
      add(Init(player: player));
    }
  }

  final CompareNavigator _navigator;
  final GetPlayerDetailsUseCase _getPlayerDetailsUseCase;

  Future<void> _initial(Player player, Emitter<CompareState> emit) async {
    emit(state.copyWith(player1: player));
  }

  Future<void> _selectPlayer(int index, Emitter<CompareState> emit) async {
    final player = await _navigator.goToPlayerSelectionPage();
    if (player != null) {
      if (index == 0) {
        emit(state.copyWith(player1: player));
      } else if (index == 1) {
        emit(state.copyWith(player2: player));
      }
      final playerResult =
          await _getPlayerDetailsUseCase(playerId: player.eaId);
      _handlePlayerDetailsResult(index, playerResult, null, null, emit);
    }
  }

  void _handlePlayerDetailsResult(
    int index,
    Result<Player> playerResult,
    int? versionId,
    String? version,
    Emitter<CompareState> emit,
  ) {
    switch (playerResult) {
      case Success(data: final player):
        if (index == 0) {
          emit(
            state.copyWith(
              player1: player,
              selectedPlayer1Version: (
                versionId ?? player.rarity.eaId,
                version ?? player.rarity.name,
              ),
            ),
          );
        } else if (index == 1) {
          emit(
            state.copyWith(
              player2: player,
              selectedPlayer2Version: (
                versionId ?? player.rarity.eaId,
                version ?? player.rarity.name,
              ),
            ),
          );
        }
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }
  }
}
