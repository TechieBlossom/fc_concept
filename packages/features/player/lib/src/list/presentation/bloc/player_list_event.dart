part of 'player_list_bloc.dart';

@freezed
class PlayerListEvent with _$PlayerListEvent {
  const factory PlayerListEvent.initial() = _Initial;

  const factory PlayerListEvent.search({
    @Default('') String query,
  }) = _Search;

  const factory PlayerListEvent.nextPage() = _NextPage;

  const factory PlayerListEvent.playerTap({
    required Player player,
    required bool resultWithSelection,
  }) = _PlayerTap;

  const factory PlayerListEvent.filterTap() = _FilterTap;
}
