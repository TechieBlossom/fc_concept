part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.tapLeague() = _TapLeague;

  const factory FilterEvent.tapClub() = _TapClub;

  const factory FilterEvent.tapNation() = _TapNation;

  const factory FilterEvent.tapRarity() = _TapRarity;

  const factory FilterEvent.tapGender(Gender gender) = _SelectGender;

  const factory FilterEvent.apply() = _Apply;
}
