part of 'player_list_bloc.dart';

@freezed
class PlayerListState with _$PlayerListState {
  const factory PlayerListState({
    @Default(ProcessState.loading) ProcessState processState,
    @Default('') String query,
    @Default(false) bool isPaginating,
    @Default(0) int page,
    List<Player>? players,
    FilterConfiguration? filterConfiguration,
  }) = _PlayerListState;
}
