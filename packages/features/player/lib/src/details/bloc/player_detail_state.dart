part of 'player_detail_bloc.dart';

@MappableClass()
class PlayerDetailState with PlayerDetailStateMappable {
  PlayerDetailState({
    required this.player,
    required this.allRoles,
    required this.allPlayStyles,
    this.playerVersions,
    this.selectedVersion,
    this.playerRoles,
    this.playerPlayStyles,
    this.playerPlayStylesPlus,
    this.playerPrice,
  });

  final Player player;
  final List<(int, int, String)>? playerVersions;
  final int? selectedVersion;
  final List<Role> allRoles;
  final List<Role>? playerRoles;
  final List<PlayStyle> allPlayStyles;
  final List<PlayStyle>? playerPlayStyles;
  final List<PlayStyle>? playerPlayStylesPlus;
  final PlayerPrice? playerPrice;
}
