import 'dart:async';

import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_dashboard/dashboard.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_bloc.mapper.dart';

part 'dashboard_event.dart';

part 'dashboard_state.dart';

enum PlayerGroup {
  recent,
  attack,
  midfielder,
  defence,
  goalKeeper,
  sbc,
}

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(
    this._getIndexDataUseCase,
    this._getRecentPlayersUseCase,
    this._getPlayerOldPricesUseCase,
    this._getSbcPlayersUseCase,
    this._getPositionalPlayersUseCase,
    this._navigator,
  ) : super(DashboardState()) {
    on<Init>((event, emit) => _onInit(emit));
    on<UpdatePlayerPrices>((event, emit) => _onUpdatePlayerPrices(event, emit));
    on<SwitchHighRatedPositionGroup>(
      (event, emit) => _onSwitchHighRatedPositionGroup(event, emit),
    );
    on<PlayerTap>((event, _) => _onPlayerTap(event));
    on<SearchTap>((_, __) => _onSearchTap());

    add(Init());
  }

  final GetIndexDataUseCase _getIndexDataUseCase;
  final GetRecentPlayersUseCase _getRecentPlayersUseCase;
  final GetPlayerOldPricesUseCase _getPlayerOldPricesUseCase;
  final GetSbcPlayersUseCase _getSbcPlayersUseCase;
  final GetPositionalPlayersUseCase _getPositionalPlayersUseCase;
  final DashboardNavigator _navigator;

  Future<void> _onInit(Emitter<DashboardState> emit) async {
    final results = await Future.wait([
      _getIndexDataUseCase(),
      _getRecentPlayersUseCase(),
      _getPositionalPlayersUseCase(positionGroup: PositionGroup.attack),
      _getPositionalPlayersUseCase(positionGroup: PositionGroup.midfielder),
      _getPositionalPlayersUseCase(positionGroup: PositionGroup.defence),
      _getPositionalPlayersUseCase(positionGroup: null),
      _getSbcPlayersUseCase(),
    ]);

    final indexesResult = results.first as Result<List<IndexData>>;
    final _indexes = _getIndexesFromResult(indexesResult);

    final recentPlayersResult = results[1] as Result<List<Player>?>;
    final _recentPlayers = _getRecentPlayersFromResult(recentPlayersResult);

    final attackPlayersResult = results[2] as Result<List<Player>?>;
    final _attackPlayers = _getRecentPlayersFromResult(attackPlayersResult);

    final midfielderPlayersResult = results[3] as Result<List<Player>?>;
    final _midfielderPlayers =
        _getRecentPlayersFromResult(midfielderPlayersResult);

    final defencePlayersResult = results[4] as Result<List<Player>?>;
    final _defencePlayers = _getRecentPlayersFromResult(defencePlayersResult);

    final goalKeeperPlayersResult = results[5] as Result<List<Player>?>;
    final _goalKeeperPlayers =
        _getRecentPlayersFromResult(goalKeeperPlayersResult);

    final sbcPlayersResult = results[6] as Result<List<Player>?>;
    final _sbcPlayers = _getRecentPlayersFromResult(sbcPlayersResult);

    emit(
      state.copyWith(
        processState: ProcessState.success,
        indexes: _indexes,
        recentPlayers: _recentPlayers,
        attackPlayers: _attackPlayers,
        midfielderPlayers: _midfielderPlayers,
        defencePlayers: _defencePlayers,
        goalKeeperPlayers: _goalKeeperPlayers,
        sbcPlayers: _sbcPlayers,
      ),
    );

    for (final group in PlayerGroup.values) {
      add(UpdatePlayerPrices(playerGroup: group));
    }
  }

  List<IndexData>? _getIndexesFromResult(
    Result<List<IndexData>> indexesResult,
  ) {
    switch (indexesResult) {
      case Success(data: final indexes):
        return indexes;
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
        return null;
    }
  }

  List<Player>? _getRecentPlayersFromResult(
    Result<List<Player>?> playersResult,
  ) {
    switch (playersResult) {
      case Success(data: final players):
        return players;
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
        return null;
    }
  }

  Future<void> _onUpdatePlayerPrices(
    UpdatePlayerPrices event,
    Emitter<DashboardState> emit,
  ) async {
    final players = switch (event.playerGroup) {
      PlayerGroup.attack => state.attackPlayers,
      PlayerGroup.midfielder => state.midfielderPlayers,
      PlayerGroup.defence => state.defencePlayers,
      PlayerGroup.goalKeeper => state.goalKeeperPlayers,
      PlayerGroup.sbc => state.sbcPlayers,
      PlayerGroup.recent => state.recentPlayers,
    };

    if (players.isNotEmpty) {
      final oldPricesResult = await _getPlayerOldPricesUseCase(
        players.map((player) => player.eaId).toList(),
      );

      switch (oldPricesResult) {
        case Success(data: final oldPrices):
          final updatedPlayers = players.map((player) {
            final oldPrice = oldPrices.firstWhere(
              (price) => price.eaId == player.eaId,
              orElse: () => PlayerOldPrice(
                eaId: player.eaId,
                price: null,
                isExtinct: false,
              ),
            );

            return player.copyWith(price: oldPrice);
          }).toList();
          switch (event.playerGroup) {
            case PlayerGroup.attack:
              emit(state.copyWith(attackPlayers: updatedPlayers));
              break;
            case PlayerGroup.midfielder:
              emit(state.copyWith(midfielderPlayers: updatedPlayers));
              break;
            case PlayerGroup.defence:
              emit(state.copyWith(defencePlayers: updatedPlayers));
              break;
            case PlayerGroup.goalKeeper:
              emit(state.copyWith(goalKeeperPlayers: updatedPlayers));
              break;
            case PlayerGroup.sbc:
              emit(state.copyWith(sbcPlayers: updatedPlayers));
              break;
            case PlayerGroup.recent:
              emit(state.copyWith(recentPlayers: updatedPlayers));
          }
        case Failure(exception: final exception):
          if (kDebugMode) {
            print(exception);
          }
      }
    }
  }

  void _onSwitchHighRatedPositionGroup(
    SwitchHighRatedPositionGroup event,
    Emitter<DashboardState> emit,
  ) {
    emit(state.copyWith(positionGroup: event.positionGroup));
  }

  Future<void> _onPlayerTap(PlayerTap event) async {
    return _navigator.goToPlayerDetail(event.player);
  }

  Future<void> _onSearchTap() async {
    return _navigator.goToSearch();
  }
}
