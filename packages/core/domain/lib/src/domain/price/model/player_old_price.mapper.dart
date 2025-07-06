// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'player_old_price.dart';

class PlayerOldPriceMapper extends ClassMapperBase<PlayerOldPrice> {
  PlayerOldPriceMapper._();

  static PlayerOldPriceMapper? _instance;
  static PlayerOldPriceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayerOldPriceMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PlayerOldPrice';

  static int _$eaId(PlayerOldPrice v) => v.eaId;
  static const Field<PlayerOldPrice, int> _f$eaId = Field('eaId', _$eaId);
  static double? _$price(PlayerOldPrice v) => v.price;
  static const Field<PlayerOldPrice, double> _f$price = Field('price', _$price);
  static bool _$isExtinct(PlayerOldPrice v) => v.isExtinct;
  static const Field<PlayerOldPrice, bool> _f$isExtinct =
      Field('isExtinct', _$isExtinct);
  static bool _$isSbc(PlayerOldPrice v) => v.isSbc;
  static const Field<PlayerOldPrice, bool> _f$isSbc = Field('isSbc', _$isSbc);

  @override
  final MappableFields<PlayerOldPrice> fields = const {
    #eaId: _f$eaId,
    #price: _f$price,
    #isExtinct: _f$isExtinct,
    #isSbc: _f$isSbc,
  };

  static PlayerOldPrice _instantiate(DecodingData data) {
    return PlayerOldPrice(
        eaId: data.dec(_f$eaId),
        price: data.dec(_f$price),
        isExtinct: data.dec(_f$isExtinct),
        isSbc: data.dec(_f$isSbc));
  }

  @override
  final Function instantiate = _instantiate;

  static PlayerOldPrice fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayerOldPrice>(map);
  }

  static PlayerOldPrice fromJson(String json) {
    return ensureInitialized().decodeJson<PlayerOldPrice>(json);
  }
}

mixin PlayerOldPriceMappable {
  String toJson() {
    return PlayerOldPriceMapper.ensureInitialized()
        .encodeJson<PlayerOldPrice>(this as PlayerOldPrice);
  }

  Map<String, dynamic> toMap() {
    return PlayerOldPriceMapper.ensureInitialized()
        .encodeMap<PlayerOldPrice>(this as PlayerOldPrice);
  }

  PlayerOldPriceCopyWith<PlayerOldPrice, PlayerOldPrice, PlayerOldPrice>
      get copyWith =>
          _PlayerOldPriceCopyWithImpl<PlayerOldPrice, PlayerOldPrice>(
              this as PlayerOldPrice, $identity, $identity);
  @override
  String toString() {
    return PlayerOldPriceMapper.ensureInitialized()
        .stringifyValue(this as PlayerOldPrice);
  }

  @override
  bool operator ==(Object other) {
    return PlayerOldPriceMapper.ensureInitialized()
        .equalsValue(this as PlayerOldPrice, other);
  }

  @override
  int get hashCode {
    return PlayerOldPriceMapper.ensureInitialized()
        .hashValue(this as PlayerOldPrice);
  }
}

extension PlayerOldPriceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlayerOldPrice, $Out> {
  PlayerOldPriceCopyWith<$R, PlayerOldPrice, $Out> get $asPlayerOldPrice =>
      $base.as((v, t, t2) => _PlayerOldPriceCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PlayerOldPriceCopyWith<$R, $In extends PlayerOldPrice, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? eaId, double? price, bool? isExtinct, bool? isSbc});
  PlayerOldPriceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PlayerOldPriceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlayerOldPrice, $Out>
    implements PlayerOldPriceCopyWith<$R, PlayerOldPrice, $Out> {
  _PlayerOldPriceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlayerOldPrice> $mapper =
      PlayerOldPriceMapper.ensureInitialized();
  @override
  $R call({int? eaId, Object? price = $none, bool? isExtinct, bool? isSbc}) =>
      $apply(FieldCopyWithData({
        if (eaId != null) #eaId: eaId,
        if (price != $none) #price: price,
        if (isExtinct != null) #isExtinct: isExtinct,
        if (isSbc != null) #isSbc: isSbc
      }));
  @override
  PlayerOldPrice $make(CopyWithData data) => PlayerOldPrice(
      eaId: data.get(#eaId, or: $value.eaId),
      price: data.get(#price, or: $value.price),
      isExtinct: data.get(#isExtinct, or: $value.isExtinct),
      isSbc: data.get(#isSbc, or: $value.isSbc));

  @override
  PlayerOldPriceCopyWith<$R2, PlayerOldPrice, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlayerOldPriceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
