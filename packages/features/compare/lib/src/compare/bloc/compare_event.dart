part of 'compare_bloc.dart';

@freezed
class CompareEvent with _$CompareEvent {
  const factory CompareEvent.initial({
    required Player player,
  }) = _Initial;

  const factory CompareEvent.selectPlayer({
    required int index,
  }) = _SelectPlayer;

  const factory CompareEvent.selectVersion({
    required int index,
    required int playerId,
    required int versionId,
    required String version,
  }) = _SelectVersion;
}
