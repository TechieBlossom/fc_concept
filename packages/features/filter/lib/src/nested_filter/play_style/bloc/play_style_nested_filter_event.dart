part of 'play_style_nested_filter_bloc.dart';

@MappableClass(discriminatorKey: 'event')
abstract class PlayStyleNestedFilterEvent
    with PlayStyleNestedFilterEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends PlayStyleNestedFilterEvent with InitMappable {}

@MappableClass(discriminatorValue: 'selectPlayStyle')
class SelectPlayStyle extends PlayStyleNestedFilterEvent
    with SelectPlayStyleMappable {
  SelectPlayStyle({
    required this.item,
  });

  final PlayStyle item;
}

@MappableClass(discriminatorValue: 'done')
class Done extends PlayStyleNestedFilterEvent with DoneMappable {}
