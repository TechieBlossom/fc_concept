part of 'rarity_nested_filter_bloc.dart';

@MappableClass()
class RarityNestedFilterState with RarityNestedFilterStateMappable {
  RarityNestedFilterState({
    this.processState = ProcessState.loading,
    this.rarityNestedFilterPageParams,
    this.rarities = const [],
    this.selectedRarities,
  });

  final ProcessState processState;
  final RarityNestedFilterPageParams? rarityNestedFilterPageParams;
  final List<Rarity> rarities;
  final List<Rarity>? selectedRarities;
}
