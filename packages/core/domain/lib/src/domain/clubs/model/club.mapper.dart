// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'club.dart';

class ClubMapper extends ClassMapperBase<Club> {
  ClubMapper._();

  static ClubMapper? _instance;
  static ClubMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClubMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Club';

  static int _$eaId(Club v) => v.eaId;
  static const Field<Club, int> _f$eaId = Field('eaId', _$eaId);
  static String _$name(Club v) => v.name;
  static const Field<Club, String> _f$name = Field('name', _$name);
  static int? _$leagueEaId(Club v) => v.leagueEaId;
  static const Field<Club, int> _f$leagueEaId =
      Field('leagueEaId', _$leagueEaId);
  static bool? _$isWomen(Club v) => v.isWomen;
  static const Field<Club, bool> _f$isWomen = Field('isWomen', _$isWomen);
  static bool? _$isIconClub(Club v) => v.isIconClub;
  static const Field<Club, bool> _f$isIconClub =
      Field('isIconClub', _$isIconClub);
  static List<int>? _$pastAndPresentHighlightedPlayerItemEaIds(Club v) =>
      v.pastAndPresentHighlightedPlayerItemEaIds;
  static const Field<Club, List<int>>
      _f$pastAndPresentHighlightedPlayerItemEaIds = Field(
          'pastAndPresentHighlightedPlayerItemEaIds',
          _$pastAndPresentHighlightedPlayerItemEaIds);
  static String? _$imagePath(Club v) => v.imagePath;
  static const Field<Club, String> _f$imagePath =
      Field('imagePath', _$imagePath);
  static String? _$lightImagePath(Club v) => v.lightImagePath;
  static const Field<Club, String> _f$lightImagePath =
      Field('lightImagePath', _$lightImagePath);

  @override
  final MappableFields<Club> fields = const {
    #eaId: _f$eaId,
    #name: _f$name,
    #leagueEaId: _f$leagueEaId,
    #isWomen: _f$isWomen,
    #isIconClub: _f$isIconClub,
    #pastAndPresentHighlightedPlayerItemEaIds:
        _f$pastAndPresentHighlightedPlayerItemEaIds,
    #imagePath: _f$imagePath,
    #lightImagePath: _f$lightImagePath,
  };

  static Club _instantiate(DecodingData data) {
    return Club(
        eaId: data.dec(_f$eaId),
        name: data.dec(_f$name),
        leagueEaId: data.dec(_f$leagueEaId),
        isWomen: data.dec(_f$isWomen),
        isIconClub: data.dec(_f$isIconClub),
        pastAndPresentHighlightedPlayerItemEaIds:
            data.dec(_f$pastAndPresentHighlightedPlayerItemEaIds),
        imagePath: data.dec(_f$imagePath),
        lightImagePath: data.dec(_f$lightImagePath));
  }

  @override
  final Function instantiate = _instantiate;

  static Club fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Club>(map);
  }

  static Club fromJson(String json) {
    return ensureInitialized().decodeJson<Club>(json);
  }
}

mixin ClubMappable {
  String toJson() {
    return ClubMapper.ensureInitialized().encodeJson<Club>(this as Club);
  }

  Map<String, dynamic> toMap() {
    return ClubMapper.ensureInitialized().encodeMap<Club>(this as Club);
  }

  ClubCopyWith<Club, Club, Club> get copyWith =>
      _ClubCopyWithImpl<Club, Club>(this as Club, $identity, $identity);
  @override
  String toString() {
    return ClubMapper.ensureInitialized().stringifyValue(this as Club);
  }

  @override
  bool operator ==(Object other) {
    return ClubMapper.ensureInitialized().equalsValue(this as Club, other);
  }

  @override
  int get hashCode {
    return ClubMapper.ensureInitialized().hashValue(this as Club);
  }
}

extension ClubValueCopy<$R, $Out> on ObjectCopyWith<$R, Club, $Out> {
  ClubCopyWith<$R, Club, $Out> get $asClub =>
      $base.as((v, t, t2) => _ClubCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClubCopyWith<$R, $In extends Club, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>?
      get pastAndPresentHighlightedPlayerItemEaIds;
  $R call(
      {int? eaId,
      String? name,
      int? leagueEaId,
      bool? isWomen,
      bool? isIconClub,
      List<int>? pastAndPresentHighlightedPlayerItemEaIds,
      String? imagePath,
      String? lightImagePath});
  ClubCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ClubCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Club, $Out>
    implements ClubCopyWith<$R, Club, $Out> {
  _ClubCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Club> $mapper = ClubMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>?
      get pastAndPresentHighlightedPlayerItemEaIds =>
          $value.pastAndPresentHighlightedPlayerItemEaIds != null
              ? ListCopyWith(
                  $value.pastAndPresentHighlightedPlayerItemEaIds!,
                  (v, t) => ObjectCopyWith(v, $identity, t),
                  (v) => call(pastAndPresentHighlightedPlayerItemEaIds: v))
              : null;
  @override
  $R call(
          {int? eaId,
          String? name,
          Object? leagueEaId = $none,
          Object? isWomen = $none,
          Object? isIconClub = $none,
          Object? pastAndPresentHighlightedPlayerItemEaIds = $none,
          Object? imagePath = $none,
          Object? lightImagePath = $none}) =>
      $apply(FieldCopyWithData({
        if (eaId != null) #eaId: eaId,
        if (name != null) #name: name,
        if (leagueEaId != $none) #leagueEaId: leagueEaId,
        if (isWomen != $none) #isWomen: isWomen,
        if (isIconClub != $none) #isIconClub: isIconClub,
        if (pastAndPresentHighlightedPlayerItemEaIds != $none)
          #pastAndPresentHighlightedPlayerItemEaIds:
              pastAndPresentHighlightedPlayerItemEaIds,
        if (imagePath != $none) #imagePath: imagePath,
        if (lightImagePath != $none) #lightImagePath: lightImagePath
      }));
  @override
  Club $make(CopyWithData data) => Club(
      eaId: data.get(#eaId, or: $value.eaId),
      name: data.get(#name, or: $value.name),
      leagueEaId: data.get(#leagueEaId, or: $value.leagueEaId),
      isWomen: data.get(#isWomen, or: $value.isWomen),
      isIconClub: data.get(#isIconClub, or: $value.isIconClub),
      pastAndPresentHighlightedPlayerItemEaIds: data.get(
          #pastAndPresentHighlightedPlayerItemEaIds,
          or: $value.pastAndPresentHighlightedPlayerItemEaIds),
      imagePath: data.get(#imagePath, or: $value.imagePath),
      lightImagePath: data.get(#lightImagePath, or: $value.lightImagePath));

  @override
  ClubCopyWith<$R2, Club, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ClubCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
