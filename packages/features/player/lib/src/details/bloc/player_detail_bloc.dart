import 'package:core_analytics/analytics.dart';
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
    required this.allChemistryStyles,
    required this.allPositions,
  });

  final Player player;
  final List<Role> allRoles;
  final List<PlayStyle> allPlayStyles;
  final List<ChemistryStyle> allChemistryStyles;
  final List<Position> allPositions;
}

@injectable
class PlayerDetailBloc extends Bloc<PlayerDetailEvent, PlayerDetailState> {
  PlayerDetailBloc(
    @factoryParam this.params,
    this._getPlayerDetailsUseCase,
    this._getPlayerVersionsUseCase,
    this._getRolesByIdsUseCase,
    this._getPlayStylesByIdsUseCase,
    this._getPlayerPriceUseCase,
    this._getPositionsByIdsUseCase,
    this._getChemistryBoostFaceValuesUseCase,
    this._getChemistryBoostFaceValuesGkUseCase,
    this._normalizeChemistryBoostUseCase,
    this._logEventUseCase,
    this._playerNavigator,
  ) : super(PlayerDetailState(player: params.player)) {
    on<Init>((event, emit) => _initial(event.player, emit));
    on<VersionTap>(
      (event, emit) => _versionTap(
        event.playerId,
        emit,
      ),
    );
    on<LoadRoles>((event, emit) => _loadRoles(event, emit));
    on<LoadPlayStyles>((event, emit) => _loadPlayStyles(event, emit));
    on<LoadVersions>((_, emit) => _loadVersions(emit));
    on<LoadPrice>((_, emit) => _loadPrice(emit));
    on<LoadAlternativePositions>((_, emit) => _loadAlternativePositions(emit));
    on<LoadChemistryBoostFaceValues>(
      (_, emit) => _loadChemistryBoostFaceValues(emit),
    );
    on<NormalizeChemistryBoost>(
      (_, emit) => _normalizeChemistryBoost(emit),
    );
    on<CompareTap>((_, emit) => _compareTap());
    on<UpdateChemistryStyle>(
      (event, emit) => _onUpdateChemistryStyle(event, emit),
    );
    on<RoleTap>((_, __) => {});
    on<PlayStyleTap>((_, __) => {});
    on<AccelerateTap>((_, __) => {});
    on<ChemistryTap>((_, __) => {});

    add(Init(player: params.player));
  }

  final PlayerDetailBlocParams params;
  final GetPlayerDetailsUseCase _getPlayerDetailsUseCase;
  final GetPlayerVersionsUseCase _getPlayerVersionsUseCase;
  final GetRolesByIdsUseCase _getRolesByIdsUseCase;
  final GetPlayStylesByIdsUseCase _getPlayStylesByIdsUseCase;
  final GetPlayerPriceUseCase _getPlayerPriceUseCase;
  final GetPositionsByIdsUseCase _getPositionsByIdsUseCase;
  final GetChemistryBoostFaceValuesUseCase _getChemistryBoostFaceValuesUseCase;
  final GetChemistryBoostFaceValuesGkUseCase
      _getChemistryBoostFaceValuesGkUseCase;
  final NormalizeChemistryBoostUseCase _normalizeChemistryBoostUseCase;
  final LogEventUseCase _logEventUseCase;
  final PlayerNavigator _playerNavigator;

  @override
  Object onEvent(PlayerDetailEvent event) {
    super.onEvent(event);
    return switch (event) {
      VersionTap() => _logEventUseCase(
          name: AnalyticsEventName.playerDetailVersionSelect,
          parameters: {'playerId': event.playerId},
        ),
      RoleTap() => _logEventUseCase(
          name: AnalyticsEventName.playerDetailRoleTap,
          parameters: {
            'playerId': state.player.eaId,
            ...event.role.analyticsParameters,
          },
        ),
      PlayStyleTap() => _logEventUseCase(
          name: AnalyticsEventName.playerDetailPlayStyleTap,
          parameters: {
            'playerId': state.player.eaId,
            ...event.playStyle.analyticsParameters,
          },
        ),
      AccelerateTap() => _logEventUseCase(
          name: AnalyticsEventName.playerDetailAccelerateTap,
          parameters: {
            'playerId': state.player.eaId,
            'accelerateType': event.accelerateType.title,
          },
        ),
      ChemistryTap() => _logEventUseCase(
          name: AnalyticsEventName.playerDetailChemistryTap,
        ),
      UpdateChemistryStyle() => {
          if (event.chemistryStyle != null && event.chemistryModifier != null)
            {
              _logEventUseCase(
                name: AnalyticsEventName.playerDetailChemistrySelect,
                parameters: {
                  'playerId': state.player.eaId,
                  'chemistryStyle': event.chemistryStyle!.name,
                  'chemistryModifier': event.chemistryModifier!,
                },
              ),
            },
        },
      _ => {},
    };
  }

  Future<void> _initial(Player player, Emitter<PlayerDetailState> emit) async {
    final playerResult = await _getPlayerDetailsUseCase(playerId: player.eaId);
    _handlePlayerDetailsResult(playerResult, emit);
  }

  Future<void> _versionTap(
    int eaId,
    Emitter<PlayerDetailState> emit,
  ) async {
    final currentPlayer = state.player;
    final selectedPlayer = state.playerVersions?.firstWhereOrNull(
      (player) => player.eaId == eaId,
    );

    emit(
      state.copyWith(
        player: selectedPlayer,
        playerVersions: state.playerVersions
          ?..removeWhere((p) => p.eaId == eaId)
          ..add(currentPlayer)
          ..sort((a, b) => a.overall.compareTo(b.overall)),
      ),
    );

    add(Init(player: selectedPlayer!));
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

  Future<void> _loadVersions(Emitter<PlayerDetailState> emit) async {
    final playerVersions = await _getPlayerVersionsUseCase(
      basePlayerEaId: state.player.basePlayerEaId,
      eaId: state.player.eaId,
    );
    _handleVersionsResult(playerVersions, emit);
  }

  Future<void> _loadPrice(Emitter<PlayerDetailState> emit) async {
    emit(state.copyWith(priceProcessState: ProcessState.loading));
    final priceResult = await _getPlayerPriceUseCase(state.player.eaId);
    switch (priceResult) {
      case Success(data: final playerPrice):
        emit(
          state.copyWith(
            playerPrice: playerPrice,
            priceProcessState: ProcessState.success,
          ),
        );
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }
  }

  void _loadChemistryBoostFaceValues(
    Emitter<PlayerDetailState> emit,
  ) {
    final faceValues = state.player.isGk
        ? _getChemistryBoostFaceValuesGkUseCase(
            state.player,
            state.normalizedChemistryBoost,
          )
        : _getChemistryBoostFaceValuesUseCase(
            state.player,
            state.normalizedChemistryBoost,
          );
    emit(state.copyWith(chemistryBoostFaceValues: faceValues));
  }

  void _loadAlternativePositions(
    Emitter<PlayerDetailState> emit,
  ) {
    final alternatePositions = _getPositionsByIdsUseCase(
      allPositions: params.allPositions,
      eaIds: state.player.alternativePositionIds ?? [],
    );
    emit(state.copyWith(alternativePositions: alternatePositions));
  }

  Future<void> _compareTap() async {
    await _playerNavigator.goToCompare(state.player);
  }

  void _onUpdateChemistryStyle(
    UpdateChemistryStyle event,
    Emitter<PlayerDetailState> emit,
  ) {
    emit(
      state.copyWith(
        selectedChemistryModifier: event.chemistryModifier,
        selectedChemistryStyle: event.chemistryStyle,
      ),
    );
    add(NormalizeChemistryBoost());
  }

  void _normalizeChemistryBoost(Emitter<PlayerDetailState> emit) {
    final normalizedChemistryBoost = _normalizeChemistryBoostUseCase(
      state.player,
      state.chemistryModifier,
    );
    emit(state.copyWith(normalizedChemistryBoost: normalizedChemistryBoost));
    add(LoadChemistryBoostFaceValues());
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
        add(LoadPrice());
        add(LoadAlternativePositions());
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }
  }

  void _handleVersionsResult(
    Result<List<Player>?> playerVersionsResult,
    Emitter<PlayerDetailState> emit,
  ) {
    switch (playerVersionsResult) {
      case Success(data: final versions):
        emit(state.copyWith(playerVersions: versions));
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }
  }
}
