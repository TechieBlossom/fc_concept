// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'play_style_category.dart';

class PlayStyleCategoryMapper extends EnumMapper<PlayStyleCategory> {
  PlayStyleCategoryMapper._();

  static PlayStyleCategoryMapper? _instance;
  static PlayStyleCategoryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayStyleCategoryMapper._());
    }
    return _instance!;
  }

  static PlayStyleCategory fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  PlayStyleCategory decode(dynamic value) {
    switch (value) {
      case 1:
        return PlayStyleCategory.scoring;
      case 2:
        return PlayStyleCategory.passing;
      case 3:
        return PlayStyleCategory.ballControl;
      case 4:
        return PlayStyleCategory.defending;
      case 5:
        return PlayStyleCategory.physical;
      case 6:
        return PlayStyleCategory.goalKeeping;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(PlayStyleCategory self) {
    switch (self) {
      case PlayStyleCategory.scoring:
        return 1;
      case PlayStyleCategory.passing:
        return 2;
      case PlayStyleCategory.ballControl:
        return 3;
      case PlayStyleCategory.defending:
        return 4;
      case PlayStyleCategory.physical:
        return 5;
      case PlayStyleCategory.goalKeeping:
        return 6;
    }
  }
}

extension PlayStyleCategoryMapperExtension on PlayStyleCategory {
  dynamic toValue() {
    PlayStyleCategoryMapper.ensureInitialized();
    return MapperContainer.globals.toValue<PlayStyleCategory>(this);
  }
}
