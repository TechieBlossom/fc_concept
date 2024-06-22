part of 'filter_bloc.dart';

@MappableClass(discriminatorKey: 'event')
abstract class FilterEvent with FilterEventMappable {}

@MappableClass(discriminatorValue: 'tapLeague')
class TapLeague extends FilterEvent with TapLeagueMappable {}

@MappableClass(discriminatorValue: 'tapClub')
class TapClub extends FilterEvent with TapClubMappable {}

@MappableClass(discriminatorValue: 'tapNation')
class TapNation extends FilterEvent with TapNationMappable {}

@MappableClass(discriminatorValue: 'tapRarity')
class TapRarity extends FilterEvent with TapRarityMappable {}

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

@MappableClass(discriminatorValue: 'apply')
class Apply extends FilterEvent with ApplyMappable {}
