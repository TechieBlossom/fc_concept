part of 'player_detail_bloc.dart';

@MappableClass()
class PlayerDetailState with PlayerDetailStateMappable {
  PlayerDetailState({
    required this.player,
    this.playerVersions,
    this.selectedVersion,
  });

  final Player player;
  final List<(int, int, String)>? playerVersions;
  final int? selectedVersion;
}
