import 'package:core_analytics/analytics.dart';
import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_dashboard/dashboard.dart';
import 'package:feature_dashboard/src/dashboard/bloc/player_group.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_extensions/extensions.dart';

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
    this._logEventUseCase,
    this._navigator,
  ) : super(DashboardState()) {
    on<Init>((event, emit) => _onInit(emit));
    on<IndexTap>((event, _) => _navigator.goToIndex(event.indexType));
    on<UpdatePlayerPrices>((event, emit) => _onUpdatePlayerPrices(event, emit));
    on<SwitchHighRatedPositionGroup>(
      (event, emit) => _onSwitchHighRatedPositionGroup(event, emit),
    );
    on<SwitchRaritySquad>(
      (event, emit) => _onSwitchRaritySquad(event, emit),
    );
    on<PlayerTap>(
      (event, _) async => _navigator.goToPlayerDetail(event.player),
    );
    on<SearchTap>((_, __) async => _navigator.goToSearch());
    on<CheapestByPlayerRatingTap>(
      (_, __) async => _navigator.goToPlayersListByRating(),
    );
    on<ToggleIcons>((event, emit) => _onToggle(emit));

    add(Init());
  }

  final GetIndexDataUseCase _getIndexDataUseCase;
  final GetPlayerOldPricesUseCase _getPlayerOldPricesUseCase;
  final GetSbcPlayersUseCase _getSbcPlayersUseCase;
  final GetPositionalPlayersUseCase _getPositionalPlayersUseCase;
  final GetTrendingPlayersUseCase _getTrendingPlayersUseCase;
  final GetUniqueRaritySquads _getUniqueRaritySquads;
  final LogEventUseCase _logEventUseCase;
  final DashboardNavigator _navigator;

  @override
  Object onEvent(DashboardEvent event) {
    super.onEvent(event);
    return switch (event) {
      IndexTap() => _logEventUseCase(
          name: AnalyticsEventName.dashboardIndexTap,
          parameters: {'index': event.indexType.title},
        ),
      SearchTap() => _logEventUseCase(
          name: AnalyticsEventName.dashboardTopSearchTap,
        ),
      CheapestByPlayerRatingTap() => _logEventUseCase(
          name: AnalyticsEventName.dashboardCheapestRatingTap,
        ),
      SwitchRaritySquad() => _logEventUseCase(
          name: AnalyticsEventName.dashboardTrendingSwitch,
          parameters: event.raritySquad?.analyticsParameters,
        ),
      SwitchHighRatedPositionGroup() => _logEventUseCase(
          name: AnalyticsEventName.dashboardPositionalSwitch,
          parameters: event.positionGroup?.analyticsParameters,
        ),
      PlayerTap() => event.fromSbc
          ? _logEventUseCase(
              name: AnalyticsEventName.dashboardSBCPlayerTap,
              parameters: event.player.analyticsParameters,
            )
          : _logEventUseCase(
              name: AnalyticsEventName.dashboardPlayerTap,
              parameters: event.player.analyticsParameters,
            ),
      _ => {},
    };
  }

  Future<void> _onInit(Emitter<DashboardState> emit) async {
    final results = await Future.wait([
      _getIndexDataUseCase(),
      _getUniqueRaritySquads(),
      _getPositionalPlayersUseCase(positionGroup: const Forwards()),
      _getPositionalPlayersUseCase(positionGroup: const Midfielders()),
      _getPositionalPlayersUseCase(positionGroup: const Defenders()),
      _getPositionalPlayersUseCase(positionGroup: const Goalkeepers()),
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
        return raritySquads.distinctBy((e) => e.rarityGroupId).toList();
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
                isSbc: false,
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

  Future<void> _onToggle(Emitter<DashboardState> emit) async {
    emit(
      state.copyWith(
        showIcons: !state.showIcons,
        positionalPlayersProcessState: ProcessState.loading,
      ),
    );
    final results = await Future.wait([
      _getPositionalPlayersUseCase(
        positionGroup: const Forwards(),
        fetchIcons: state.showIcons,
      ),
      _getPositionalPlayersUseCase(
        positionGroup: const Midfielders(),
        fetchIcons: state.showIcons,
      ),
      _getPositionalPlayersUseCase(
        positionGroup: const Defenders(),
        fetchIcons: state.showIcons,
      ),
      _getPositionalPlayersUseCase(
        positionGroup: const Goalkeepers(),
        fetchIcons: state.showIcons,
      ),
    ]);

    final attackPlayersResult = results[0];
    final _attackPlayers = _getTrendingPlayersFromResult(attackPlayersResult);

    final midfielderPlayersResult = results[1];
    final _midfielderPlayers =
        _getTrendingPlayersFromResult(midfielderPlayersResult);

    final defencePlayersResult = results[2];
    final _defencePlayers = _getTrendingPlayersFromResult(defencePlayersResult);

    final goalKeeperPlayersResult = results[3];
    final _goalKeeperPlayers =
        _getTrendingPlayersFromResult(goalKeeperPlayersResult);

    emit(
      state.copyWith(
        positionalPlayersProcessState: ProcessState.success,
        attackPlayers: _attackPlayers,
        midfielderPlayers: _midfielderPlayers,
        defencePlayers: _defencePlayers,
        goalKeeperPlayers: _goalKeeperPlayers,
      ),
    );

    add(UpdatePlayerPrices(playerGroup: const Attack()));
    add(UpdatePlayerPrices(playerGroup: const Midfielder()));
    add(UpdatePlayerPrices(playerGroup: const Defence()));
    add(UpdatePlayerPrices(playerGroup: const GoalKeeper()));
  }
}
