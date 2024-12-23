// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'index_data.dart';

class IndexDataMapper extends ClassMapperBase<IndexData> {
  IndexDataMapper._();

  static IndexDataMapper? _instance;
  static IndexDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IndexDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'IndexData';

  static DateTime _$dateTime(IndexData v) => v.dateTime;
  static const Field<IndexData, DateTime> _f$dateTime =
      Field('dateTime', _$dateTime, key: 'created_at');
  static double _$forwards(IndexData v) => v.forwards;
  static const Field<IndexData, double> _f$forwards =
      Field('forwards', _$forwards);
  static double _$midfielders(IndexData v) => v.midfielders;
  static const Field<IndexData, double> _f$midfielders =
      Field('midfielders', _$midfielders);
  static double _$defenders(IndexData v) => v.defenders;
  static const Field<IndexData, double> _f$defenders =
      Field('defenders', _$defenders);
  static double _$goalkeepers(IndexData v) => v.goalkeepers;
  static const Field<IndexData, double> _f$goalkeepers =
      Field('goalkeepers', _$goalkeepers);

  @override
  final MappableFields<IndexData> fields = const {
    #dateTime: _f$dateTime,
    #forwards: _f$forwards,
    #midfielders: _f$midfielders,
    #defenders: _f$defenders,
    #goalkeepers: _f$goalkeepers,
  };

  static IndexData _instantiate(DecodingData data) {
    return IndexData(
        dateTime: data.dec(_f$dateTime),
        forwards: data.dec(_f$forwards),
        midfielders: data.dec(_f$midfielders),
        defenders: data.dec(_f$defenders),
        goalkeepers: data.dec(_f$goalkeepers));
  }

  @override
  final Function instantiate = _instantiate;

  static IndexData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<IndexData>(map);
  }

  static IndexData fromJson(String json) {
    return ensureInitialized().decodeJson<IndexData>(json);
  }
}

mixin IndexDataMappable {
  String toJson() {
    return IndexDataMapper.ensureInitialized()
        .encodeJson<IndexData>(this as IndexData);
  }

  Map<String, dynamic> toMap() {
    return IndexDataMapper.ensureInitialized()
        .encodeMap<IndexData>(this as IndexData);
  }

  IndexDataCopyWith<IndexData, IndexData, IndexData> get copyWith =>
      _IndexDataCopyWithImpl(this as IndexData, $identity, $identity);
  @override
  String toString() {
    return IndexDataMapper.ensureInitialized()
        .stringifyValue(this as IndexData);
  }

  @override
  bool operator ==(Object other) {
    return IndexDataMapper.ensureInitialized()
        .equalsValue(this as IndexData, other);
  }

  @override
  int get hashCode {
    return IndexDataMapper.ensureInitialized().hashValue(this as IndexData);
  }
}

extension IndexDataValueCopy<$R, $Out> on ObjectCopyWith<$R, IndexData, $Out> {
  IndexDataCopyWith<$R, IndexData, $Out> get $asIndexData =>
      $base.as((v, t, t2) => _IndexDataCopyWithImpl(v, t, t2));
}

abstract class IndexDataCopyWith<$R, $In extends IndexData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {DateTime? dateTime,
      double? forwards,
      double? midfielders,
      double? defenders,
      double? goalkeepers});
  IndexDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _IndexDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, IndexData, $Out>
    implements IndexDataCopyWith<$R, IndexData, $Out> {
  _IndexDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<IndexData> $mapper =
      IndexDataMapper.ensureInitialized();
  @override
  $R call(
          {DateTime? dateTime,
          double? forwards,
          double? midfielders,
          double? defenders,
          double? goalkeepers}) =>
      $apply(FieldCopyWithData({
        if (dateTime != null) #dateTime: dateTime,
        if (forwards != null) #forwards: forwards,
        if (midfielders != null) #midfielders: midfielders,
        if (defenders != null) #defenders: defenders,
        if (goalkeepers != null) #goalkeepers: goalkeepers
      }));
  @override
  IndexData $make(CopyWithData data) => IndexData(
      dateTime: data.get(#dateTime, or: $value.dateTime),
      forwards: data.get(#forwards, or: $value.forwards),
      midfielders: data.get(#midfielders, or: $value.midfielders),
      defenders: data.get(#defenders, or: $value.defenders),
      goalkeepers: data.get(#goalkeepers, or: $value.goalkeepers));

  @override
  IndexDataCopyWith<$R2, IndexData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _IndexDataCopyWithImpl($value, $cast, t);
}
