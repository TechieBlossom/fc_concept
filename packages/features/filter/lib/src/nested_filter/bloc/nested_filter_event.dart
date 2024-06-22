part of 'nested_filter_bloc.dart';

@freezed
class NestedFilterEvent with _$NestedFilterEvent {
  const factory NestedFilterEvent.initial() = _Initial;

  const factory NestedFilterEvent.selectClub({
    required Club club,
  }) = _SelectClub;

  const factory NestedFilterEvent.selectItem({
    required NestedFilterLayoutType item,
  }) = _SelectItem;

  const factory NestedFilterEvent.done() = _Done;
  const factory NestedFilterEvent.back() = _Back;
}
