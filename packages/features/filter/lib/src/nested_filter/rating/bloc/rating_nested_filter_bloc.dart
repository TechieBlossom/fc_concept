import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_filter/src/navigation/navigator.dart';
import 'package:feature_filter/src/nested_filter/rating/rating_nested_filter_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'rating_nested_filter_bloc.mapper.dart';
part 'rating_nested_filter_event.dart';
part 'rating_nested_filter_state.dart';

@injectable
class RatingNestedFilterBloc
    extends Bloc<RatingNestedFilterEvent, RatingNestedFilterState> {
  RatingNestedFilterBloc(
    @factoryParam RatingNestedFilterPageParams ratingNestedFilterPageParams,
    this._navigator,
  ) : super(
          RatingNestedFilterState(
            ratingNestedFilterPageParams: ratingNestedFilterPageParams,
          ),
        ) {
    on<Init>((event, emit) => _initial(emit));
    on<SelectRating>((event, emit) => _selectItem(event.item, emit));
    on<Done>((event, emit) => _done());

    add(Init());
  }

  final FilterNavigator _navigator;

  Future<void> _initial(
    Emitter<RatingNestedFilterState> emit,
  ) async {
    final allRatings = List.generate(100, (index) => 100 - (index + 1));
    emit(
      state.copyWith(
        ratings: allRatings,
        processState: ProcessState.success,
      ),
    );
  }

  void _selectItem(int item, Emitter<RatingNestedFilterState> emit) {
    final selectedRatings = List<int>.from(
      state.selectedRatings ?? state.ratingNestedFilterPageParams?.items ?? [],
    ).toList();
    if (selectedRatings.contains(item)) {
      emit(state.copyWith(selectedRatings: selectedRatings..remove(item)));
    } else {
      emit(state.copyWith(selectedRatings: selectedRatings..add(item)));
    }
  }

  void _done() {
    _navigator.closeAny<List<int>?>(state.selectedRatings);
  }
}
