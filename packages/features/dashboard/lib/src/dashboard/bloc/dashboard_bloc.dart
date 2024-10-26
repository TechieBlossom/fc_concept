import 'dart:async';

import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_dashboard/dashboard.dart';
import 'package:feature_dashboard/src/dashboard/bloc/player_group.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_bloc.mapper.dart';

part 'dashboard_event.dart';

part 'dashboard_state.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(
    this._getIndexDataUseCase,
    this._getPlayerOldPricesUseCase,
    this._getSbcPlayersUseCase,
    this._getPositionalPlayersUseCase,
    this._getTrendingPlayersUseCase,
    this._getUniqueRaritySquads,
    this._navigator,
  ) : super(DashboardState()) {
    on<Init>((event, emit) => _onInit(emit));
    on<UpdatePlayerPrices>((event, emit) => _onUpdatePlayerPrices(event, emit));
    on<SwitchHighRatedPositionGroup>(
      (event, emit) => _onSwitchHighRatedPositionGroup(event, emit),
    );
    on<SwitchRaritySquad>(
      (event, emit) => _onSwitchRaritySquad(event, emit),
    );
    on<PlayerTap>((event, _) => _onPlayerTap(event));
    on<SearchTap>((_, __) => _onSearchTap());

    add(Init());
  }

  final GetIndexDataUseCase _getIndexDataUseCase;
  final GetPlayerOldPricesUseCase _getPlayerOldPricesUseCase;
  final GetSbcPlayersUseCase _getSbcPlayersUseCase;
  final GetPositionalPlayersUseCase _getPositionalPlayersUseCase;
  final GetTrendingPlayersUseCase _getTrendingPlayersUseCase;
  final GetUniqueRaritySquads _getUniqueRaritySquads;
  final DashboardNavigator _navigator;

  Future<void> _onInit(Emitter<DashboardState> emit) async {
    final results = await Future.wait([
      _getIndexDataUseCase(),
      _getUniqueRaritySquads(),
      _getPositionalPlayersUseCase(positionGroup: PositionGroup.attack),
      _getPositionalPlayersUseCase(positionGroup: PositionGroup.midfielder),
      _getPositionalPlayersUseCase(positionGroup: PositionGroup.defence),
      _getPositionalPlayersUseCase(positionGroup: null),
      _getSbcPlayersUseCase(),
    ]);

    final indexesResult = results.first as Result<List<IndexData>>;
    final _indexes = _getIndexesFromResult(indexesResult);

    final attackPlayersResult = results[2] as Result<List<Player>?>;
    final _attackPlayers = _getTrendingPlayersFromResult(attackPlayersResult);

    final midfielderPlayersResult = results[3] as Result<List<Player>?>;
    final _midfielderPlayers =
        _getTrendingPlayersFromResult(midfielderPlayersResult);

    final defencePlayersResult = results[4] as Result<List<Player>?>;
    final _defencePlayers = _getTrendingPlayersFromResult(defencePlayersResult);

    final goalKeeperPlayersResult = results[5] as Result<List<Player>?>;
    final _goalKeeperPlayers =
        _getTrendingPlayersFromResult(goalKeeperPlayersResult);

    final sbcPlayersResult = results[6] as Result<List<Player>?>;
    final _sbcPlayers = _getTrendingPlayersFromResult(sbcPlayersResult);

    final raritySquadsResult = results[1] as Result<List<RaritySquad>>;
    final _raritySquads = _getRaritySquadsFromResult(raritySquadsResult);

    final _trendingPlayersResultFutures = <Future<Result<List<Player>?>>>[];
    _trendingPlayersResultFutures.add(
      _getTrendingPlayersUseCase(raritySquad: null),
    );
    for (final raritySquad in _raritySquads!) {
      _trendingPlayersResultFutures.add(
        _getTrendingPlayersUseCase(raritySquad: raritySquad),
      );
    }

    final trendPlayersResults =
        await Future.wait(_trendingPlayersResultFutures);
    final trendingPlayersMap = <RaritySquad?, List<Player>?>{};
    for (var i = 0; i < trendPlayersResults.length; i++) {
      if (i == 0) {
        trendingPlayersMap[null] = _getTrendingPlayersFromResult(
          trendPlayersResults[i],
        );
      } else {
        trendingPlayersMap[_raritySquads[i - 1]] =
            _getTrendingPlayersFromResult(
          trendPlayersResults[i],
        );
      }
    }

    emit(
      state.copyWith(
        processState: ProcessState.success,
        indexes: _indexes,
        raritySquadPlayers: trendingPlayersMap,
        attackPlayers: _attackPlayers,
        midfielderPlayers: _midfielderPlayers,
        defencePlayers: _defencePlayers,
        goalKeeperPlayers: _goalKeeperPlayers,
        sbcPlayers: _sbcPlayers,
      ),
    );

    add(UpdatePlayerPrices(playerGroup: const Attack()));
    add(UpdatePlayerPrices(playerGroup: const Midfielder()));
    add(UpdatePlayerPrices(playerGroup: const Defence()));
    add(UpdatePlayerPrices(playerGroup: const GoalKeeper()));
    add(UpdatePlayerPrices(playerGroup: const Sbc()));

    state.raritySquadPlayers.forEach((key, value) {
      add(UpdatePlayerPrices(playerGroup: TrendingPlayers(key)));
    });
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

  List<Player>? _getTrendingPlayersFromResult(
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

  List<RaritySquad>? _getRaritySquadsFromResult(
    Result<List<RaritySquad>> raritySquadsResult,
  ) {
    switch (raritySquadsResult) {
      case Success(data: final raritySquads):
        return raritySquads;
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
      Attack() => state.attackPlayers,
      Midfielder() => state.midfielderPlayers,
      Defence() => state.defencePlayers,
      GoalKeeper() => state.goalKeeperPlayers,
      Sbc() => state.sbcPlayers,
      TrendingPlayers(raritySquad: final raritySquad) =>
        state.raritySquadPlayers[raritySquad],
    };

    if (players?.isNotEmpty ?? false) {
      final oldPricesResult = await _getPlayerOldPricesUseCase(
        players!.map((player) => player.eaId).toList(),
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
            case Attack():
              emit(state.copyWith(attackPlayers: updatedPlayers));
              break;
            case Midfielder():
              emit(state.copyWith(midfielderPlayers: updatedPlayers));
              break;
            case Defence():
              emit(state.copyWith(defencePlayers: updatedPlayers));
              break;
            case GoalKeeper():
              emit(state.copyWith(goalKeeperPlayers: updatedPlayers));
              break;
            case Sbc():
              emit(state.copyWith(sbcPlayers: updatedPlayers));
              break;
            case TrendingPlayers(raritySquad: final raritySquad):
              emit(
                state.copyWith(
                  raritySquadPlayers: {
                    ...state.raritySquadPlayers,
                    raritySquad: updatedPlayers,
                  },
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

  void _onSwitchHighRatedPositionGroup(
    SwitchHighRatedPositionGroup event,
    Emitter<DashboardState> emit,
  ) {
    emit(state.copyWith(positionGroup: event.positionGroup));
  }

  void _onSwitchRaritySquad(
    SwitchRaritySquad event,
    Emitter<DashboardState> emit,
  ) {
    emit(state.copyWith(raritySquad: event.raritySquad));
  }

  Future<void> _onPlayerTap(PlayerTap event) async {
    return _navigator.goToPlayerDetail(event.player);
  }

  Future<void> _onSearchTap() async {
    return _navigator.goToSearch();
  }
}
