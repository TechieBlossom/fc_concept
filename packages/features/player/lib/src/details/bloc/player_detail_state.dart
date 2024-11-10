part of 'player_detail_bloc.dart';

@MappableClass()
class PlayerDetailState with PlayerDetailStateMappable {
  PlayerDetailState({
    required this.player,
    this.playerVersions,
    this.playerRoles,
    this.playerPlayStyles,
    this.playerPlayStylesPlus,
    this.alternativePositions,
    this.playerPrice,
    this.selectedChemistryModifier,
    this.normalizedChemistryBoost,
    this.selectedChemistryStyle,
    this.chemistryBoostFaceValues,
  });

  final Player player;
  final List<Player>? playerVersions;
  final List<Role>? playerRoles;
  final List<PlayStyle>? playerPlayStyles;
  final List<PlayStyle>? playerPlayStylesPlus;
  final List<Position>? alternativePositions;
  final PlayerPrice? playerPrice;
  final int? selectedChemistryModifier;
  final ChemistryModifier? normalizedChemistryBoost;
  final ChemistryStyle? selectedChemistryStyle;
  final ChemistryBoostFaceValues? chemistryBoostFaceValues;

  ChemistryModifier? get chemistryModifier =>
      switch (selectedChemistryModifier) {
        1 => selectedChemistryStyle?.oneChemistryModifiers,
        2 => selectedChemistryStyle?.twoChemistryModifiers,
        3 => selectedChemistryStyle?.threeChemistryModifiers,
        _ => null,
      };
}
