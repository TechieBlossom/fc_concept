part of 'nested_filter_bloc.dart';

@MappableClass(discriminatorKey: 'nestedFilterEvent')
abstract class NestedFilterEvent with NestedFilterEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends NestedFilterEvent with InitMappable {}

@MappableClass(discriminatorValue: 'selectClub')
class SelectClub extends NestedFilterEvent with SelectClubMappable {
  SelectClub({
    required this.club,
  });

  final Club club;
}

@MappableClass(discriminatorValue: 'selectItem')
class SelectItem extends NestedFilterEvent with SelectItemMappable {
  SelectItem({
    required this.item,
  });

  final NestedFilterLayoutType item;
}

@MappableClass(discriminatorValue: 'done')
class Done extends NestedFilterEvent with DoneMappable {}

@MappableClass(discriminatorValue: 'Back')
class Back extends NestedFilterEvent with BackMappable {}
