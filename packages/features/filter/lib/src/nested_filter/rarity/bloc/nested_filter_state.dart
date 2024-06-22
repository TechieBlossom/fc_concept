part of 'rarity_nested_filter_bloc.dart';

@freezed
class RarityNestedFilterState with _$RarityNestedFilterState {
  const factory RarityNestedFilterState({
    @Default(ProcessState.loading) ProcessState processState,
    RarityNestedFilterPageParams? rarityNestedFilterPageParams,
    List<Rarity>? rarities,
    List<Rarity>? selectedRarities,
  }) = _RarityNestedFilterState;
}
