part of 'rarity_nested_filter_bloc.dart';

@freezed
class RarityNestedFilterEvent with _$RarityNestedFilterEvent {
  const factory RarityNestedFilterEvent.initial() = _Initial;

  const factory RarityNestedFilterEvent.selectRarity({
    required Rarity item,
  }) = _SelectRarity;

  const factory RarityNestedFilterEvent.done() = _Done;
}
