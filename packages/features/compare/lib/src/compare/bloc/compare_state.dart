part of 'compare_bloc.dart';

@freezed
class CompareState with _$CompareState {
  const factory CompareState({
    Player? player1,
    Player? player2,
    List<(int, int, String)>? player1Versions,
    (int, String)? selectedPlayer1Version,
    List<(int, int, String)>? player2Versions,
    (int, String)? selectedPlayer2Version,
  }) = _CompareState;
}
