// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'filter_configuration.dart';

class FilterConfigurationMapper extends ClassMapperBase<FilterConfiguration> {
  FilterConfigurationMapper._();

  static FilterConfigurationMapper? _instance;
  static FilterConfigurationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FilterConfigurationMapper._());
      MapperContainer.globals
          .useAll([RangeValuesMapper(), PositionGroupMapper()]);
      NestedFilterLayoutTypeMapper.ensureInitialized();
      ClubMapper.ensureInitialized();
      RarityMapper.ensureInitialized();
      GenderMapper.ensureInitialized();
      FootMapper.ensureInitialized();
      PositionMapper.ensureInitialized();
      RoleMapper.ensureInitialized();
      PlayStyleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FilterConfiguration';

  static String _$searchQuery(FilterConfiguration v) => v.searchQuery;
  static const Field<FilterConfiguration, String> _f$searchQuery =
      Field('searchQuery', _$searchQuery, opt: true, def: '');
  static List<NestedFilterLayoutType>? _$leagues(FilterConfiguration v) =>
      v.leagues;
  static const Field<FilterConfiguration, List<NestedFilterLayoutType>>
      _f$leagues = Field('leagues', _$leagues, opt: true);
  static List<NestedFilterLayoutType>? _$nations(FilterConfiguration v) =>
      v.nations;
  static const Field<FilterConfiguration, List<NestedFilterLayoutType>>
      _f$nations = Field('nations', _$nations, opt: true);
  static List<Club>? _$clubs(FilterConfiguration v) => v.clubs;
  static const Field<FilterConfiguration, List<Club>> _f$clubs =
      Field('clubs', _$clubs, opt: true);
  static List<Rarity>? _$rarities(FilterConfiguration v) => v.rarities;
  static const Field<FilterConfiguration, List<Rarity>> _f$rarities =
      Field('rarities', _$rarities, opt: true);
  static RangeValues _$overallRatingRange(FilterConfiguration v) =>
      v.overallRatingRange;
  static const Field<FilterConfiguration, RangeValues> _f$overallRatingRange =
      Field('overallRatingRange', _$overallRatingRange,
          opt: true, def: const RangeValues(47, 99));
  static List<Gender>? _$genders(FilterConfiguration v) => v.genders;
  static const Field<FilterConfiguration, List<Gender>> _f$genders =
      Field('genders', _$genders, opt: true);
  static List<Foot>? _$foots(FilterConfiguration v) => v.foots;
  static const Field<FilterConfiguration, List<Foot>> _f$foots =
      Field('foots', _$foots, opt: true);
  static List<Position>? _$positions(FilterConfiguration v) => v.positions;
  static const Field<FilterConfiguration, List<Position>> _f$positions =
      Field('positions', _$positions, opt: true);
  static List<PositionGroup>? _$positionGroups(FilterConfiguration v) =>
      v.positionGroups;
  static const Field<FilterConfiguration, List<PositionGroup>>
      _f$positionGroups = Field('positionGroups', _$positionGroups, opt: true);
  static List<Role>? _$roles(FilterConfiguration v) => v.roles;
  static const Field<FilterConfiguration, List<Role>> _f$roles =
      Field('roles', _$roles, opt: true);
  static List<PlayStyle> _$playStyles(FilterConfiguration v) => v.playStyles;
  static const Field<FilterConfiguration, List<PlayStyle>> _f$playStyles =
      Field('playStyles', _$playStyles, opt: true, def: const []);
  static SortOrder _$sortOrder(FilterConfiguration v) => v.sortOrder;
  static const Field<FilterConfiguration, SortOrder> _f$sortOrder =
      Field('sortOrder', _$sortOrder, opt: true, def: SortOrder.descending);

  @override
  final MappableFields<FilterConfiguration> fields = const {
    #searchQuery: _f$searchQuery,
    #leagues: _f$leagues,
    #nations: _f$nations,
    #clubs: _f$clubs,
    #rarities: _f$rarities,
    #overallRatingRange: _f$overallRatingRange,
    #genders: _f$genders,
    #foots: _f$foots,
    #positions: _f$positions,
    #positionGroups: _f$positionGroups,
    #roles: _f$roles,
    #playStyles: _f$playStyles,
    #sortOrder: _f$sortOrder,
  };

  static FilterConfiguration _instantiate(DecodingData data) {
    return FilterConfiguration(
        searchQuery: data.dec(_f$searchQuery),
        leagues: data.dec(_f$leagues),
        nations: data.dec(_f$nations),
        clubs: data.dec(_f$clubs),
        rarities: data.dec(_f$rarities),
        overallRatingRange: data.dec(_f$overallRatingRange),
        genders: data.dec(_f$genders),
        foots: data.dec(_f$foots),
        positions: data.dec(_f$positions),
        positionGroups: data.dec(_f$positionGroups),
        roles: data.dec(_f$roles),
        playStyles: data.dec(_f$playStyles),
        sortOrder: data.dec(_f$sortOrder));
  }

  @override
  final Function instantiate = _instantiate;

  static FilterConfiguration fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FilterConfiguration>(map);
  }

  static FilterConfiguration fromJson(String json) {
    return ensureInitialized().decodeJson<FilterConfiguration>(json);
  }
}

mixin FilterConfigurationMappable {
  String toJson() {
    return FilterConfigurationMapper.ensureInitialized()
        .encodeJson<FilterConfiguration>(this as FilterConfiguration);
  }

  Map<String, dynamic> toMap() {
    return FilterConfigurationMapper.ensureInitialized()
        .encodeMap<FilterConfiguration>(this as FilterConfiguration);
  }

  FilterConfigurationCopyWith<FilterConfiguration, FilterConfiguration,
      FilterConfiguration> get copyWith => _FilterConfigurationCopyWithImpl<
          FilterConfiguration, FilterConfiguration>(
      this as FilterConfiguration, $identity, $identity);
  @override
  String toString() {
    return FilterConfigurationMapper.ensureInitialized()
        .stringifyValue(this as FilterConfiguration);
  }

  @override
  bool operator ==(Object other) {
    return FilterConfigurationMapper.ensureInitialized()
        .equalsValue(this as FilterConfiguration, other);
  }

  @override
  int get hashCode {
    return FilterConfigurationMapper.ensureInitialized()
        .hashValue(this as FilterConfiguration);
  }
}

extension FilterConfigurationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FilterConfiguration, $Out> {
  FilterConfigurationCopyWith<$R, FilterConfiguration, $Out>
      get $asFilterConfiguration => $base.as(
          (v, t, t2) => _FilterConfigurationCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FilterConfigurationCopyWith<$R, $In extends FilterConfiguration,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, NestedFilterLayoutType,
          ObjectCopyWith<$R, NestedFilterLayoutType, NestedFilterLayoutType>>?
      get leagues;
  ListCopyWith<$R, NestedFilterLayoutType,
          ObjectCopyWith<$R, NestedFilterLayoutType, NestedFilterLayoutType>>?
      get nations;
  ListCopyWith<$R, Club, ClubCopyWith<$R, Club, Club>>? get clubs;
  ListCopyWith<$R, Rarity, RarityCopyWith<$R, Rarity, Rarity>>? get rarities;
  ListCopyWith<$R, Gender, ObjectCopyWith<$R, Gender, Gender>>? get genders;
  ListCopyWith<$R, Foot, ObjectCopyWith<$R, Foot, Foot>>? get foots;
  ListCopyWith<$R, Position, PositionCopyWith<$R, Position, Position>>?
      get positions;
  ListCopyWith<$R, PositionGroup,
      ObjectCopyWith<$R, PositionGroup, PositionGroup>>? get positionGroups;
  ListCopyWith<$R, Role, RoleCopyWith<$R, Role, Role>>? get roles;
  ListCopyWith<$R, PlayStyle, PlayStyleCopyWith<$R, PlayStyle, PlayStyle>>
      get playStyles;
  $R call(
      {String? searchQuery,
      List<NestedFilterLayoutType>? leagues,
      List<NestedFilterLayoutType>? nations,
      List<Club>? clubs,
      List<Rarity>? rarities,
      RangeValues? overallRatingRange,
      List<Gender>? genders,
      List<Foot>? foots,
      List<Position>? positions,
      List<PositionGroup>? positionGroups,
      List<Role>? roles,
      List<PlayStyle>? playStyles,
      SortOrder? sortOrder});
  FilterConfigurationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _FilterConfigurationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FilterConfiguration, $Out>
    implements FilterConfigurationCopyWith<$R, FilterConfiguration, $Out> {
  _FilterConfigurationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FilterConfiguration> $mapper =
      FilterConfigurationMapper.ensureInitialized();
  @override
  ListCopyWith<$R, NestedFilterLayoutType,
          ObjectCopyWith<$R, NestedFilterLayoutType, NestedFilterLayoutType>>?
      get leagues => $value.leagues != null
          ? ListCopyWith(
              $value.leagues!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(leagues: v))
          : null;
  @override
  ListCopyWith<$R, NestedFilterLayoutType,
          ObjectCopyWith<$R, NestedFilterLayoutType, NestedFilterLayoutType>>?
      get nations => $value.nations != null
          ? ListCopyWith(
              $value.nations!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(nations: v))
          : null;
  @override
  ListCopyWith<$R, Club, ClubCopyWith<$R, Club, Club>>? get clubs =>
      $value.clubs != null
          ? ListCopyWith($value.clubs!, (v, t) => v.copyWith.$chain(t),
              (v) => call(clubs: v))
          : null;
  @override
  ListCopyWith<$R, Rarity, RarityCopyWith<$R, Rarity, Rarity>>? get rarities =>
      $value.rarities != null
          ? ListCopyWith($value.rarities!, (v, t) => v.copyWith.$chain(t),
              (v) => call(rarities: v))
          : null;
  @override
  ListCopyWith<$R, Gender, ObjectCopyWith<$R, Gender, Gender>>? get genders =>
      $value.genders != null
          ? ListCopyWith(
              $value.genders!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(genders: v))
          : null;
  @override
  ListCopyWith<$R, Foot, ObjectCopyWith<$R, Foot, Foot>>? get foots =>
      $value.foots != null
          ? ListCopyWith($value.foots!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(foots: v))
          : null;
  @override
  ListCopyWith<$R, Position, PositionCopyWith<$R, Position, Position>>?
      get positions => $value.positions != null
          ? ListCopyWith($value.positions!, (v, t) => v.copyWith.$chain(t),
              (v) => call(positions: v))
          : null;
  @override
  ListCopyWith<$R, PositionGroup,
          ObjectCopyWith<$R, PositionGroup, PositionGroup>>?
      get positionGroups => $value.positionGroups != null
          ? ListCopyWith(
              $value.positionGroups!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(positionGroups: v))
          : null;
  @override
  ListCopyWith<$R, Role, RoleCopyWith<$R, Role, Role>>? get roles =>
      $value.roles != null
          ? ListCopyWith($value.roles!, (v, t) => v.copyWith.$chain(t),
              (v) => call(roles: v))
          : null;
  @override
  ListCopyWith<$R, PlayStyle, PlayStyleCopyWith<$R, PlayStyle, PlayStyle>>
      get playStyles => ListCopyWith($value.playStyles,
          (v, t) => v.copyWith.$chain(t), (v) => call(playStyles: v));
  @override
  $R call(
          {String? searchQuery,
          Object? leagues = $none,
          Object? nations = $none,
          Object? clubs = $none,
          Object? rarities = $none,
          RangeValues? overallRatingRange,
          Object? genders = $none,
          Object? foots = $none,
          Object? positions = $none,
          Object? positionGroups = $none,
          Object? roles = $none,
          List<PlayStyle>? playStyles,
          SortOrder? sortOrder}) =>
      $apply(FieldCopyWithData({
        if (searchQuery != null) #searchQuery: searchQuery,
        if (leagues != $none) #leagues: leagues,
        if (nations != $none) #nations: nations,
        if (clubs != $none) #clubs: clubs,
        if (rarities != $none) #rarities: rarities,
        if (overallRatingRange != null) #overallRatingRange: overallRatingRange,
        if (genders != $none) #genders: genders,
        if (foots != $none) #foots: foots,
        if (positions != $none) #positions: positions,
        if (positionGroups != $none) #positionGroups: positionGroups,
        if (roles != $none) #roles: roles,
        if (playStyles != null) #playStyles: playStyles,
        if (sortOrder != null) #sortOrder: sortOrder
      }));
  @override
  FilterConfiguration $make(CopyWithData data) => FilterConfiguration(
      searchQuery: data.get(#searchQuery, or: $value.searchQuery),
      leagues: data.get(#leagues, or: $value.leagues),
      nations: data.get(#nations, or: $value.nations),
      clubs: data.get(#clubs, or: $value.clubs),
      rarities: data.get(#rarities, or: $value.rarities),
      overallRatingRange:
          data.get(#overallRatingRange, or: $value.overallRatingRange),
      genders: data.get(#genders, or: $value.genders),
      foots: data.get(#foots, or: $value.foots),
      positions: data.get(#positions, or: $value.positions),
      positionGroups: data.get(#positionGroups, or: $value.positionGroups),
      roles: data.get(#roles, or: $value.roles),
      playStyles: data.get(#playStyles, or: $value.playStyles),
      sortOrder: data.get(#sortOrder, or: $value.sortOrder));

  @override
  FilterConfigurationCopyWith<$R2, FilterConfiguration, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _FilterConfigurationCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
