part of 'player_detail_bloc.dart';

@MappableClass()
class PlayerDetailState with PlayerDetailStateMappable {
  PlayerDetailState({
    required this.player,
    this.playerVersions,
    this.selectedVersion,
    this.playerRoles,
    this.playerPlayStyles,
    this.playerPlayStylesPlus,
    this.playerPrice,
    this.selectedChemistryModifier,
    this.selectedChemistryStyle,
  });

  final Player player;
  final List<(int, int, String)>? playerVersions;
  final int? selectedVersion;
  final List<Role>? playerRoles;
  final List<PlayStyle>? playerPlayStyles;
  final List<PlayStyle>? playerPlayStylesPlus;
  final PlayerPrice? playerPrice;
  final int? selectedChemistryModifier;
  final ChemistryStyle? selectedChemistryStyle;

  ChemistryModifier? get chemistryModifier =>
      switch (selectedChemistryModifier) {
        1 => selectedChemistryStyle?.oneChemistryModifiers,
        2 => selectedChemistryStyle?.twoChemistryModifiers,
        3 => selectedChemistryStyle?.threeChemistryModifiers,
        _ => null,
      };
}
