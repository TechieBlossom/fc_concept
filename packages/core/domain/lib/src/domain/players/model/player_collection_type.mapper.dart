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
      case 'rarity':
        return PlayerCollectionType.rarity;
      case 'role':
        return PlayerCollectionType.role;
      case 'rolePlus':
        return PlayerCollectionType.rolePlus;
      case 'playStyle':
        return PlayerCollectionType.playStyle;
      case 'playStylePlus':
        return PlayerCollectionType.playStylePlus;
      case 'league':
        return PlayerCollectionType.league;
      case 'club':
        return PlayerCollectionType.club;
      case 'nation':
        return PlayerCollectionType.nation;
      case 'position':
        return PlayerCollectionType.position;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(PlayerCollectionType self) {
    switch (self) {
      case PlayerCollectionType.rarity:
        return 'rarity';
      case PlayerCollectionType.role:
        return 'role';
      case PlayerCollectionType.rolePlus:
        return 'rolePlus';
      case PlayerCollectionType.playStyle:
        return 'playStyle';
      case PlayerCollectionType.playStylePlus:
        return 'playStylePlus';
      case PlayerCollectionType.league:
        return 'league';
      case PlayerCollectionType.club:
        return 'club';
      case PlayerCollectionType.nation:
        return 'nation';
      case PlayerCollectionType.position:
        return 'position';
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
