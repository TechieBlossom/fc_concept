part of 'player_detail_bloc.dart';

@MappableClass()
class PlayerDetailState with PlayerDetailStateMappable {
  PlayerDetailState({
    required this.player,
    required this.allRoles,
    this.playerVersions,
    this.selectedVersion,
    this.playerRoles,
    this.playerPrice,
  });

  final Player player;
  final List<(int, int, String)>? playerVersions;
  final int? selectedVersion;
  final List<Role> allRoles;
  final List<Role>? playerRoles;
  final PlayerPrice? playerPrice;
}
