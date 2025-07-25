part of 'filter_bloc.dart';

@MappableClass(discriminatorKey: 'event')
abstract class FilterEvent with FilterEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends FilterEvent with InitMappable {}

@MappableClass(discriminatorValue: 'tapLeague')
class TapLeague extends FilterEvent with TapLeagueMappable {}

@MappableClass(discriminatorValue: 'tapClub')
class TapClub extends FilterEvent with TapClubMappable {}

@MappableClass(discriminatorValue: 'tapNation')
class TapNation extends FilterEvent with TapNationMappable {}

@MappableClass(discriminatorValue: 'tapRarity')
class TapRarity extends FilterEvent with TapRarityMappable {}

@MappableClass(discriminatorValue: 'tapRole')
class TapRole extends FilterEvent with TapRoleMappable {}

@MappableClass(discriminatorValue: 'tapPlayStyle')
class TapPlayStyle extends FilterEvent with TapPlayStyleMappable {}

@MappableClass(discriminatorValue: 'changeOverallRating')
class ChangeOverallRating extends FilterEvent with ChangeOverallRatingMappable {
  ChangeOverallRating({
    required this.overallRatingRange,
  });

  final RangeValues overallRatingRange;
}

@MappableClass(discriminatorValue: 'tapGender')
class TapGender extends FilterEvent with TapGenderMappable {
  TapGender({
    required this.gender,
  });

  final Gender gender;
}

@MappableClass(discriminatorValue: 'tapFoot')
class TapFoot extends FilterEvent with TapFootMappable {
  TapFoot({
    required this.foot,
  });

  final Foot foot;
}

@MappableClass(discriminatorValue: 'tapPositionGroup')
class TapPositionGroup extends FilterEvent with TapPositionGroupMappable {
  TapPositionGroup({
    required this.allPositions,
    required this.positionGroup,
  });

  final List<Position> allPositions;
  final PositionGroup positionGroup;
}

@MappableClass(discriminatorValue: 'tapPosition')
class TapPosition extends FilterEvent with TapPositionMappable {
  TapPosition({
    required this.position,
  });

  final Position position;
}

@MappableClass(discriminatorValue: 'tapSortOrder')
class TapSortOrder extends FilterEvent with TapSortOrderMappable {
  TapSortOrder({
    required this.sortOrder,
  });

  final SortOrder sortOrder;
}

@MappableClass(discriminatorValue: 'apply')
class Apply extends FilterEvent with ApplyMappable {}

@MappableClass(discriminatorValue: 'clear')
class Clear extends FilterEvent with ClearMappable {}
