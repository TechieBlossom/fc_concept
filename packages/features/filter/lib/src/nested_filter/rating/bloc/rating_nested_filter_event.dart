part of 'rating_nested_filter_bloc.dart';

@MappableClass(discriminatorKey: 'event')
abstract class RatingNestedFilterEvent with RatingNestedFilterEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends RatingNestedFilterEvent with InitMappable {}

@MappableClass(discriminatorValue: 'selectRating')
class SelectRating extends RatingNestedFilterEvent with SelectRatingMappable {
  SelectRating({
    required this.item,
  });

  final int item;
}

@MappableClass(discriminatorValue: 'done')
class Done extends RatingNestedFilterEvent with DoneMappable {}
