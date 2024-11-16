part of 'player_detail_bloc.dart';

@MappableClass()
class PlayerDetailState with PlayerDetailStateMappable {
  PlayerDetailState({
    this.priceProcessState = ProcessState.loading,
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

  final ProcessState? priceProcessState;

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

  AccelerateType? get chemistryStyleAccelerate {
    if (selectedChemistryStyle == null) {
      return null;
    }

    var accelerateType = AccelerateType.controlled;

    if (player.accelerateTypes != null) {
      if (player.accelerateTypes!.lengthy.contains(
        selectedChemistryStyle!.name,
      )) {
        accelerateType = AccelerateType.lengthy;
      }
      if (player.accelerateTypes!.explosive.contains(
        selectedChemistryStyle!.name,
      )) {
        accelerateType = AccelerateType.explosive;
      }
      if (player.accelerateTypes!.controlled.contains(
        selectedChemistryStyle!.name,
      )) {
        accelerateType = AccelerateType.controlled;
      }
      if (player.accelerateTypes!.mostlyLengthy.contains(
        selectedChemistryStyle!.name,
      )) {
        accelerateType = AccelerateType.mostlyLengthy;
      }
      if (player.accelerateTypes!.mostlyExplosive.contains(
        selectedChemistryStyle!.name,
      )) {
        accelerateType = AccelerateType.mostlyExplosive;
      }
      if (player.accelerateTypes!.controlledLengthy.contains(
        selectedChemistryStyle!.name,
      )) {
        accelerateType = AccelerateType.controlledLengthy;
      }
      if (player.accelerateTypes!.controlledExplosive.contains(
        selectedChemistryStyle!.name,
      )) {
        accelerateType = AccelerateType.controlledExplosive;
      }
    }
    return accelerateType;
  }
}
