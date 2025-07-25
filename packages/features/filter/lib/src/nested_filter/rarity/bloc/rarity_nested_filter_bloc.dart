import 'package:core_analytics/analytics.dart';
import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_filter/src/navigation/navigator.dart';
import 'package:feature_filter/src/nested_filter/rarity/rarity_nested_filter_page.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

part 'rarity_nested_filter_bloc.mapper.dart';

part 'rarity_nested_filter_event.dart';

part 'rarity_nested_filter_state.dart';

@injectable
class RarityNestedFilterBloc
    extends Bloc<RarityNestedFilterEvent, RarityNestedFilterState> {
  RarityNestedFilterBloc(
    @factoryParam RarityNestedFilterPageParams rarityNestedFilterPageParams,
    this._getAllRarities,
    this._logEventUseCase,
    this._navigator,
  ) : super(
          RarityNestedFilterState(
            rarityNestedFilterPageParams: rarityNestedFilterPageParams,
          ),
        ) {
    on<Init>((event, emit) => _initial(emit));
    on<SelectRarity>((event, emit) => _selectItem(event.item, emit));
    on<Clear>((_, emit) => _clear(emit));
    on<Done>((event, emit) => _done());

    add(Init());
  }

  final GetAllRarities _getAllRarities;
  final LogEventUseCase _logEventUseCase;
  final FilterNavigator _navigator;

  @override
  Object onEvent(RarityNestedFilterEvent event) {
    super.onEvent(event);
    if (event is SelectRarity) {
      return _logEventUseCase(
        name: AnalyticsEventName.filterRaritySelect,
        parameters: event.item.analyticsParameters,
      );
    }
    return {};
  }

  Future<void> _initial(
    Emitter<RarityNestedFilterState> emit,
  ) async {
    final raritiesResult = await _getAllRarities();
    _handleRaritiesResult(raritiesResult, emit);
  }

  void _selectItem(Rarity item, Emitter<RarityNestedFilterState> emit) {
    final selectedRarities = List<Rarity>.from(
      state.selectedRarities ?? state.rarityNestedFilterPageParams?.items ?? [],
    ).toList();
    if (selectedRarities.contains(item)) {
      emit(state.copyWith(selectedRarities: selectedRarities..remove(item)));
    } else {
      emit(state.copyWith(selectedRarities: selectedRarities..add(item)));
    }
  }

  void _clear(Emitter<RarityNestedFilterState> emit) {
    emit(state.copyWith(selectedRarities: []));
  }

  void _done() {
    _navigator.closeAny<List<Rarity>?>(state.selectedRarities);
  }

  void _handleRaritiesResult(
    Result<List<Rarity>> rarities,
    Emitter<RarityNestedFilterState> emit,
  ) {
    switch (rarities) {
      case Success(data: final rarities):
        emit(
          state.copyWith(
            rarities: rarities,
            processState: ProcessState.success,
          ),
        );
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }
  }
}
