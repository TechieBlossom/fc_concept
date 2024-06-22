// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'card_color.dart';

class CardColorMapper extends EnumMapper<CardColor> {
  CardColorMapper._();

  static CardColorMapper? _instance;
  static CardColorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CardColorMapper._());
    }
    return _instance!;
  }

  static CardColor fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  CardColor decode(dynamic value) {
    switch (value) {
      case 'gold':
        return CardColor.gold;
      case 'silver':
        return CardColor.silver;
      case 'bronze':
        return CardColor.bronze;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(CardColor self) {
    switch (self) {
      case CardColor.gold:
        return 'gold';
      case CardColor.silver:
        return 'silver';
      case CardColor.bronze:
        return 'bronze';
    }
  }
}

extension CardColorMapperExtension on CardColor {
  String toValue() {
    CardColorMapper.ensureInitialized();
    return MapperContainer.globals.toValue<CardColor>(this) as String;
  }
}
