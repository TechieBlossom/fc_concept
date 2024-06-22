part of 'player_detail_bloc.dart';

@freezed
class PlayerDetailEvent with _$PlayerDetailEvent {
  const factory PlayerDetailEvent.initial({
    required Player player,
  }) = _InitialPlayerDetailEvent;

  const factory PlayerDetailEvent.versionTap({
    required int playerId,
    required int versionId,
  }) = _VersionTapPlayerDetailEvent;

  const factory PlayerDetailEvent.compareTap() = _CompareTapPlayerDetailEvent;
}
