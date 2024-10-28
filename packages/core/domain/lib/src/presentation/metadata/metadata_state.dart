part of 'metadata_bloc.dart';

@MappableClass()
class MetadataState with MetadataStateMappable {
  MetadataState({
    this.roles = const [],
    this.playStyles = const [],
    this.positions = const [],
    this.chemistryStyles = const [],
  });

  final List<Role> roles;
  final List<PlayStyle> playStyles;
  final List<Position> positions;
  final List<ChemistryStyle> chemistryStyles;
}
