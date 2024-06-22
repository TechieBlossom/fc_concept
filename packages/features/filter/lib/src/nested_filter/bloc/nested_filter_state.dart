part of 'nested_filter_bloc.dart';

@MappableClass()
class NestedFilterState with NestedFilterStateMappable {
  NestedFilterState({
    this.processState = ProcessState.loading,
    this.nestedFilterPageParams,
    this.topLeagues,
    this.otherLeagues,
    this.selectedLeagues,
    this.topItems,
    this.otherItems,
    this.selectedItems,
    this.topNations,
    this.otherNations,
    this.selectedNations,
    this.clubs,
    this.selectedClubs,
  });

  final ProcessState processState;
  final NestedFilterPageParams? nestedFilterPageParams;
  final List<League>? topLeagues;
  final List<League>? otherLeagues;
  final List<League>? selectedLeagues;
  final List<NestedFilterLayoutType>? topItems;
  final List<NestedFilterLayoutType>? otherItems;
  final List<NestedFilterLayoutType>? selectedItems;
  final List<Nation>? topNations;
  final List<Nation>? otherNations;
  final List<Nation>? selectedNations;
  final Map<int, List<Club>?>? clubs;
  final List<Club>? selectedClubs;
}
