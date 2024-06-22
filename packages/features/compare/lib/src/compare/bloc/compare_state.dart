part of 'compare_bloc.dart';

@MappableClass()
class CompareState with CompareStateMappable {
  CompareState({
    this.player1,
    this.player2,
    this.player1Versions,
    this.selectedPlayer1Version,
    this.player2Versions,
    this.selectedPlayer2Version,
  });

  final Player? player1;
  final Player? player2;
  final List<(int, int, String)>? player1Versions;
  final (int, String)? selectedPlayer1Version;
  final List<(int, int, String)>? player2Versions;
  final (int, String)? selectedPlayer2Version;
}
