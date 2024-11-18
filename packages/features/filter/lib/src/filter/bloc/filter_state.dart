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
    required this.roles,
    required this.playStyles,
    required this.overallRatingRange,
    required this.sortOrder,
  });

  final List<NestedFilterLayoutType>? leagues;
  final List<NestedFilterLayoutType>? nations;
  final List<Club>? clubs;
  final List<Rarity>? rarities;
  final List<Gender>? genders;
  final List<Foot>? foots;
  final List<Position>? positions;
  final List<PositionGroup>? positionGroups;
  final List<Role>? roles;
  final List<PlayStyle>? playStyles;
  final RangeValues overallRatingRange;
  final SortOrder sortOrder;
}
