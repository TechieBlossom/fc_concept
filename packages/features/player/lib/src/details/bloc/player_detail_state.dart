part of 'player_detail_bloc.dart';

@freezed
class PlayerDetailState with _$PlayerDetailState {
  const factory PlayerDetailState({
    required Player player,
    List<(int, int, String)>? playerVersions,
    int? selectedVersion,
  }) = _PlayerDetailState;
}
