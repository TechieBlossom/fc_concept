part of 'filter_bloc.dart';

@MappableClass()
class FilterState with FilterStateMappable {
  FilterState({
    required this.leagues,
    required this.nations,
    required this.clubs,
    required this.rarities,
    required this.genders,
    required this.foots,
    required this.positions,
    required this.positionGroups,
    required this.overallRating,
  });

  final List<NestedFilterLayoutType>? leagues;
  final List<NestedFilterLayoutType>? nations;
  final List<Club>? clubs;
  final List<Rarity>? rarities;
  final List<Gender>? genders;
  final List<Foot>? foots;
  final List<Position>? positions;
  final List<PositionGroup>? positionGroups;
  final List<int>? overallRating;
}
