part of 'rating_nested_filter_bloc.dart';

@MappableClass()
class RatingNestedFilterState with RatingNestedFilterStateMappable {
  RatingNestedFilterState({
    this.processState = ProcessState.loading,
    this.ratingNestedFilterPageParams,
    this.ratings,
    this.selectedRatings,
  });

  final ProcessState processState;
  final RatingNestedFilterPageParams? ratingNestedFilterPageParams;
  final List<int>? ratings;
  final List<int>? selectedRatings;
}
