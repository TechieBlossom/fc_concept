part of 'nested_filter_bloc.dart';

@freezed
class NestedFilterState with _$NestedFilterState {
  const factory NestedFilterState({
    @Default(ProcessState.loading) ProcessState processState,
    NestedFilterPageParams? nestedFilterPageParams,
    List<League>? topLeagues,
    List<League>? otherLeagues,
    List<League>? selectedLeagues,
    List<NestedFilterLayoutType>? topItems,
    List<NestedFilterLayoutType>? otherItems,
    List<NestedFilterLayoutType>? selectedItems,
    List<Nation>? topNations,
    List<Nation>? otherNations,
    List<Nation>? selectedNations,
    Map<int, List<Club>?>? clubs,
    List<Club>? selectedClubs,
  }) = _NestedFilterState;
}
