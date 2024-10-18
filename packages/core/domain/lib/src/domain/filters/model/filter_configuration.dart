import 'package:core_domain/src/domain/clubs/model/club.dart';
import 'package:core_domain/src/domain/common/foot.dart';
import 'package:core_domain/src/domain/common/gender.dart';
import 'package:core_domain/src/domain/common/nested_filter_layout_type.dart';
import 'package:core_domain/src/domain/positions/model/position.dart';
import 'package:core_domain/src/domain/positions/model/position_group.dart';
import 'package:core_domain/src/domain/rarity/model/rarity.dart';
import 'package:core_domain/src/domain/roles/model/role.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/material.dart';

part 'filter_configuration.mapper.dart';

@MappableClass()
class FilterConfiguration with FilterConfigurationMappable {
  const FilterConfiguration({
    this.leagues,
    this.nations,
    this.clubs,
    this.rarities,
    this.overallRatingRange,
    this.genders,
    this.foots,
    this.positions,
    this.positionGroups,
    this.roles,
  });

  final List<NestedFilterLayoutType>? leagues;
  final List<NestedFilterLayoutType>? nations;
  final List<Club>? clubs;
  final List<Rarity>? rarities;
  final RangeValues? overallRatingRange;
  final List<Gender>? genders;
  final List<Foot>? foots;
  final List<Position>? positions;
  final List<PositionGroup>? positionGroups;
  final List<Role>? roles;
}
