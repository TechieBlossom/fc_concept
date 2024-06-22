part of 'rarity_nested_filter_bloc.dart';

@MappableClass(discriminatorKey: 'event')
abstract class RarityNestedFilterEvent with RarityNestedFilterEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends RarityNestedFilterEvent with InitMappable {}

@MappableClass(discriminatorValue: 'selectRarity')
class SelectRarity extends RarityNestedFilterEvent with SelectRarityMappable {
  SelectRarity({required this.item,});

  final Rarity item;
}

@MappableClass(discriminatorValue: 'done')
class Done extends RarityNestedFilterEvent with DoneMappable {}

