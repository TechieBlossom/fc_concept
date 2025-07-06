// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'player_collection_type.dart';

class PlayerCollectionTypeMapper extends EnumMapper<PlayerCollectionType> {
  PlayerCollectionTypeMapper._();

  static PlayerCollectionTypeMapper? _instance;
  static PlayerCollectionTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayerCollectionTypeMapper._());
    }
    return _instance!;
  }

  static PlayerCollectionType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  PlayerCollectionType decode(dynamic value) {
    switch (value) {
      case r'rarity':
        return PlayerCollectionType.rarity;
      case r'role':
        return PlayerCollectionType.role;
      case r'rolePlus':
        return PlayerCollectionType.rolePlus;
      case r'playStyle':
        return PlayerCollectionType.playStyle;
      case r'playStylePlus':
        return PlayerCollectionType.playStylePlus;
      case r'league':
        return PlayerCollectionType.league;
      case r'club':
        return PlayerCollectionType.club;
      case r'nation':
        return PlayerCollectionType.nation;
      case r'position':
        return PlayerCollectionType.position;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(PlayerCollectionType self) {
    switch (self) {
      case PlayerCollectionType.rarity:
        return r'rarity';
      case PlayerCollectionType.role:
        return r'role';
      case PlayerCollectionType.rolePlus:
        return r'rolePlus';
      case PlayerCollectionType.playStyle:
        return r'playStyle';
      case PlayerCollectionType.playStylePlus:
        return r'playStylePlus';
      case PlayerCollectionType.league:
        return r'league';
      case PlayerCollectionType.club:
        return r'club';
      case PlayerCollectionType.nation:
        return r'nation';
      case PlayerCollectionType.position:
        return r'position';
    }
  }
}

extension PlayerCollectionTypeMapperExtension on PlayerCollectionType {
  String toValue() {
    PlayerCollectionTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<PlayerCollectionType>(this)
        as String;
  }
}
