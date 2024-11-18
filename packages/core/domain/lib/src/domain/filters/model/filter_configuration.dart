import 'package:core_analytics/analytics.dart';
import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/material.dart';

part 'filter_configuration.mapper.dart';

@MappableClass(
  includeCustomMappers: [
    RangeValuesMapper(),
    PositionGroupMapper(),
  ],
)
class FilterConfiguration
    with FilterConfigurationMappable, AnalyticsEventParameters {
  const FilterConfiguration({
    this.searchQuery = '',
    this.leagues,
    this.nations,
    this.clubs,
    this.rarities,
    this.overallRatingRange = const RangeValues(47, 99),
    this.genders,
    this.foots,
    this.positions,
    this.positionGroups,
    this.roles,
    this.playStyles = const [],
    this.sortOrder = SortOrder.descending,
  });

  final String searchQuery;
  final List<NestedFilterLayoutType>? leagues;
  final List<NestedFilterLayoutType>? nations;
  final List<Club>? clubs;
  final List<Rarity>? rarities;
  final RangeValues overallRatingRange;
  final List<Gender>? genders;
  final List<Foot>? foots;
  final List<Position>? positions;
  final List<PositionGroup>? positionGroups;
  final List<Role>? roles;
  final List<PlayStyle> playStyles;
  final SortOrder sortOrder;

  bool hasFilters() {
    return (searchQuery.isNotEmpty) ||
        (genders?.isNotEmpty ?? false) ||
        (foots?.isNotEmpty ?? false) ||
        (positions?.isNotEmpty ?? false) ||
        (rarities?.isNotEmpty ?? false) ||
        (roles?.isNotEmpty ?? false) ||
        (playStyles.isNotEmpty) ||
        (leagues?.isNotEmpty ?? false) ||
        (nations?.isNotEmpty ?? false) ||
        (clubs?.isNotEmpty ?? false);
  }

  @override
  Map<String, Object> get analyticsParameters {
    final map = <String, Object>{};
    map['sortOrder'] = sortOrder.title;
    if (searchQuery.isNotEmpty) {
      map['searchQuery'] = searchQuery;
    }
    if (roles?.isNotEmpty ?? false) {
      map['roles'] = roles!.map((e) => e.analyticsParameters).join(',');
    }
    if (playStyles.isNotEmpty) {
      map['playStyles'] =
          playStyles.map((e) => e.analyticsParameters).join(',');
    }
    if (leagues?.isNotEmpty ?? false) {
      map['leagues'] =
          leagues!.map((e) => {'id': e.eaId, 'name': e.name}).join(',');
    }
    if (clubs?.isNotEmpty ?? false) {
      map['clubs'] = clubs!.map((e) => e.analyticsParameters).join(',');
    }
    if (nations?.isNotEmpty ?? false) {
      map['nations'] =
          nations!.map((e) => {'id': e.eaId, 'name': e.name}).join(',');
    }
    if (rarities?.isNotEmpty ?? false) {
      map['rarities'] = rarities!.map((e) => e.analyticsParameters).join(',');
    }
    if (overallRatingRange.start != 47 || overallRatingRange.end != 99) {
      map['overallRatingRange'] = {
        'start': overallRatingRange.start.toInt(),
        'end': overallRatingRange.end.toInt(),
      }.toString();
    }
    if (positions?.isNotEmpty ?? false) {
      map['positions'] = positions!.map((e) => e.analyticsParameters).join(',');
    }
    if (positionGroups?.isNotEmpty ?? false) {
      map['positionGroups'] =
          positionGroups!.map((e) => e.analyticsParameters).join(',');
    }
    if (genders?.isNotEmpty ?? false) {
      map['genders'] = genders!.map((e) => e.analyticsParameters).join(',');
    }
    if (foots?.isNotEmpty ?? false) {
      map['foots'] = foots!.map((e) => e.analyticsParameters).join(',');
    }

    return map;
  }
}

class RangeValuesMapper extends SimpleMapper<RangeValues> {
  const RangeValuesMapper();

  @override
  RangeValues decode(dynamic value) {
    final map = value as Map<String, dynamic>;
    return RangeValues(map[0], map[1]);
  }

  @override
  dynamic encode(RangeValues self) {
    return {0: self.start.toInt(), 1: self.end.toInt()};
  }
}

class PositionGroupMapper extends SimpleMapper<PositionGroup> {
  const PositionGroupMapper();

  @override
  PositionGroup decode(dynamic value) {
    return PositionGroup.fromString(value as String);
  }

  @override
  dynamic encode(PositionGroup self) {
    return self.toPositionTypeName();
  }
}
