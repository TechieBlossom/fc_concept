// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'player_price.dart';

class PlayerPriceMapper extends ClassMapperBase<PlayerPrice> {
  PlayerPriceMapper._();

  static PlayerPriceMapper? _instance;
  static PlayerPriceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayerPriceMapper._());
      CurrentPriceMapper.ensureInitialized();
      MomentumMapper.ensureInitialized();
      OverviewMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlayerPrice';

  static CurrentPrice _$currentPrice(PlayerPrice v) => v.currentPrice;
  static const Field<PlayerPrice, CurrentPrice> _f$currentPrice =
      Field('currentPrice', _$currentPrice);
  static Momentum _$momentum(PlayerPrice v) => v.momentum;
  static const Field<PlayerPrice, Momentum> _f$momentum =
      Field('momentum', _$momentum);
  static Overview _$overview(PlayerPrice v) => v.overview;
  static const Field<PlayerPrice, Overview> _f$overview =
      Field('overview', _$overview);

  @override
  final MappableFields<PlayerPrice> fields = const {
    #currentPrice: _f$currentPrice,
    #momentum: _f$momentum,
    #overview: _f$overview,
  };

  static PlayerPrice _instantiate(DecodingData data) {
    return PlayerPrice(
        currentPrice: data.dec(_f$currentPrice),
        momentum: data.dec(_f$momentum),
        overview: data.dec(_f$overview));
  }

  @override
  final Function instantiate = _instantiate;

  static PlayerPrice fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayerPrice>(map);
  }

  static PlayerPrice fromJson(String json) {
    return ensureInitialized().decodeJson<PlayerPrice>(json);
  }
}

mixin PlayerPriceMappable {
  String toJson() {
    return PlayerPriceMapper.ensureInitialized()
        .encodeJson<PlayerPrice>(this as PlayerPrice);
  }

  Map<String, dynamic> toMap() {
    return PlayerPriceMapper.ensureInitialized()
        .encodeMap<PlayerPrice>(this as PlayerPrice);
  }

  PlayerPriceCopyWith<PlayerPrice, PlayerPrice, PlayerPrice> get copyWith =>
      _PlayerPriceCopyWithImpl<PlayerPrice, PlayerPrice>(
          this as PlayerPrice, $identity, $identity);
  @override
  String toString() {
    return PlayerPriceMapper.ensureInitialized()
        .stringifyValue(this as PlayerPrice);
  }

  @override
  bool operator ==(Object other) {
    return PlayerPriceMapper.ensureInitialized()
        .equalsValue(this as PlayerPrice, other);
  }

  @override
  int get hashCode {
    return PlayerPriceMapper.ensureInitialized().hashValue(this as PlayerPrice);
  }
}

extension PlayerPriceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlayerPrice, $Out> {
  PlayerPriceCopyWith<$R, PlayerPrice, $Out> get $asPlayerPrice =>
      $base.as((v, t, t2) => _PlayerPriceCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PlayerPriceCopyWith<$R, $In extends PlayerPrice, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  CurrentPriceCopyWith<$R, CurrentPrice, CurrentPrice> get currentPrice;
  MomentumCopyWith<$R, Momentum, Momentum> get momentum;
  OverviewCopyWith<$R, Overview, Overview> get overview;
  $R call({CurrentPrice? currentPrice, Momentum? momentum, Overview? overview});
  PlayerPriceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlayerPriceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlayerPrice, $Out>
    implements PlayerPriceCopyWith<$R, PlayerPrice, $Out> {
  _PlayerPriceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlayerPrice> $mapper =
      PlayerPriceMapper.ensureInitialized();
  @override
  CurrentPriceCopyWith<$R, CurrentPrice, CurrentPrice> get currentPrice =>
      $value.currentPrice.copyWith.$chain((v) => call(currentPrice: v));
  @override
  MomentumCopyWith<$R, Momentum, Momentum> get momentum =>
      $value.momentum.copyWith.$chain((v) => call(momentum: v));
  @override
  OverviewCopyWith<$R, Overview, Overview> get overview =>
      $value.overview.copyWith.$chain((v) => call(overview: v));
  @override
  $R call(
          {CurrentPrice? currentPrice,
          Momentum? momentum,
          Overview? overview}) =>
      $apply(FieldCopyWithData({
        if (currentPrice != null) #currentPrice: currentPrice,
        if (momentum != null) #momentum: momentum,
        if (overview != null) #overview: overview
      }));
  @override
  PlayerPrice $make(CopyWithData data) => PlayerPrice(
      currentPrice: data.get(#currentPrice, or: $value.currentPrice),
      momentum: data.get(#momentum, or: $value.momentum),
      overview: data.get(#overview, or: $value.overview));

  @override
  PlayerPriceCopyWith<$R2, PlayerPrice, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlayerPriceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CurrentPriceMapper extends ClassMapperBase<CurrentPrice> {
  CurrentPriceMapper._();

  static CurrentPriceMapper? _instance;
  static CurrentPriceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CurrentPriceMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CurrentPrice';

  static int? _$price(CurrentPrice v) => v.price;
  static const Field<CurrentPrice, int> _f$price = Field('price', _$price);
  static DateTime? _$priceUpdatedAt(CurrentPrice v) => v.priceUpdatedAt;
  static const Field<CurrentPrice, DateTime> _f$priceUpdatedAt =
      Field('priceUpdatedAt', _$priceUpdatedAt);
  static bool _$isExtinct(CurrentPrice v) => v.isExtinct;
  static const Field<CurrentPrice, bool> _f$isExtinct =
      Field('isExtinct', _$isExtinct);
  static bool _$isSbc(CurrentPrice v) => v.isSbc;
  static const Field<CurrentPrice, bool> _f$isSbc = Field('isSbc', _$isSbc);

  @override
  final MappableFields<CurrentPrice> fields = const {
    #price: _f$price,
    #priceUpdatedAt: _f$priceUpdatedAt,
    #isExtinct: _f$isExtinct,
    #isSbc: _f$isSbc,
  };

  static CurrentPrice _instantiate(DecodingData data) {
    return CurrentPrice(
        price: data.dec(_f$price),
        priceUpdatedAt: data.dec(_f$priceUpdatedAt),
        isExtinct: data.dec(_f$isExtinct),
        isSbc: data.dec(_f$isSbc));
  }

  @override
  final Function instantiate = _instantiate;

  static CurrentPrice fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CurrentPrice>(map);
  }

  static CurrentPrice fromJson(String json) {
    return ensureInitialized().decodeJson<CurrentPrice>(json);
  }
}

mixin CurrentPriceMappable {
  String toJson() {
    return CurrentPriceMapper.ensureInitialized()
        .encodeJson<CurrentPrice>(this as CurrentPrice);
  }

  Map<String, dynamic> toMap() {
    return CurrentPriceMapper.ensureInitialized()
        .encodeMap<CurrentPrice>(this as CurrentPrice);
  }

  CurrentPriceCopyWith<CurrentPrice, CurrentPrice, CurrentPrice> get copyWith =>
      _CurrentPriceCopyWithImpl<CurrentPrice, CurrentPrice>(
          this as CurrentPrice, $identity, $identity);
  @override
  String toString() {
    return CurrentPriceMapper.ensureInitialized()
        .stringifyValue(this as CurrentPrice);
  }

  @override
  bool operator ==(Object other) {
    return CurrentPriceMapper.ensureInitialized()
        .equalsValue(this as CurrentPrice, other);
  }

  @override
  int get hashCode {
    return CurrentPriceMapper.ensureInitialized()
        .hashValue(this as CurrentPrice);
  }
}

extension CurrentPriceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CurrentPrice, $Out> {
  CurrentPriceCopyWith<$R, CurrentPrice, $Out> get $asCurrentPrice =>
      $base.as((v, t, t2) => _CurrentPriceCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CurrentPriceCopyWith<$R, $In extends CurrentPrice, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? price, DateTime? priceUpdatedAt, bool? isExtinct, bool? isSbc});
  CurrentPriceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CurrentPriceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CurrentPrice, $Out>
    implements CurrentPriceCopyWith<$R, CurrentPrice, $Out> {
  _CurrentPriceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CurrentPrice> $mapper =
      CurrentPriceMapper.ensureInitialized();
  @override
  $R call(
          {Object? price = $none,
          Object? priceUpdatedAt = $none,
          bool? isExtinct,
          bool? isSbc}) =>
      $apply(FieldCopyWithData({
        if (price != $none) #price: price,
        if (priceUpdatedAt != $none) #priceUpdatedAt: priceUpdatedAt,
        if (isExtinct != null) #isExtinct: isExtinct,
        if (isSbc != null) #isSbc: isSbc
      }));
  @override
  CurrentPrice $make(CopyWithData data) => CurrentPrice(
      price: data.get(#price, or: $value.price),
      priceUpdatedAt: data.get(#priceUpdatedAt, or: $value.priceUpdatedAt),
      isExtinct: data.get(#isExtinct, or: $value.isExtinct),
      isSbc: data.get(#isSbc, or: $value.isSbc));

  @override
  CurrentPriceCopyWith<$R2, CurrentPrice, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CurrentPriceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MomentumMapper extends ClassMapperBase<Momentum> {
  MomentumMapper._();

  static MomentumMapper? _instance;
  static MomentumMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MomentumMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Momentum';

  static int _$lowestBin(Momentum v) => v.lowestBin;
  static const Field<Momentum, int> _f$lowestBin =
      Field('lowestBin', _$lowestBin);
  static int _$highestBin(Momentum v) => v.highestBin;
  static const Field<Momentum, int> _f$highestBin =
      Field('highestBin', _$highestBin);

  @override
  final MappableFields<Momentum> fields = const {
    #lowestBin: _f$lowestBin,
    #highestBin: _f$highestBin,
  };

  static Momentum _instantiate(DecodingData data) {
    return Momentum(
        lowestBin: data.dec(_f$lowestBin), highestBin: data.dec(_f$highestBin));
  }

  @override
  final Function instantiate = _instantiate;

  static Momentum fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Momentum>(map);
  }

  static Momentum fromJson(String json) {
    return ensureInitialized().decodeJson<Momentum>(json);
  }
}

mixin MomentumMappable {
  String toJson() {
    return MomentumMapper.ensureInitialized()
        .encodeJson<Momentum>(this as Momentum);
  }

  Map<String, dynamic> toMap() {
    return MomentumMapper.ensureInitialized()
        .encodeMap<Momentum>(this as Momentum);
  }

  MomentumCopyWith<Momentum, Momentum, Momentum> get copyWith =>
      _MomentumCopyWithImpl<Momentum, Momentum>(
          this as Momentum, $identity, $identity);
  @override
  String toString() {
    return MomentumMapper.ensureInitialized().stringifyValue(this as Momentum);
  }

  @override
  bool operator ==(Object other) {
    return MomentumMapper.ensureInitialized()
        .equalsValue(this as Momentum, other);
  }

  @override
  int get hashCode {
    return MomentumMapper.ensureInitialized().hashValue(this as Momentum);
  }
}

extension MomentumValueCopy<$R, $Out> on ObjectCopyWith<$R, Momentum, $Out> {
  MomentumCopyWith<$R, Momentum, $Out> get $asMomentum =>
      $base.as((v, t, t2) => _MomentumCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MomentumCopyWith<$R, $In extends Momentum, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? lowestBin, int? highestBin});
  MomentumCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MomentumCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Momentum, $Out>
    implements MomentumCopyWith<$R, Momentum, $Out> {
  _MomentumCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Momentum> $mapper =
      MomentumMapper.ensureInitialized();
  @override
  $R call({int? lowestBin, int? highestBin}) => $apply(FieldCopyWithData({
        if (lowestBin != null) #lowestBin: lowestBin,
        if (highestBin != null) #highestBin: highestBin
      }));
  @override
  Momentum $make(CopyWithData data) => Momentum(
      lowestBin: data.get(#lowestBin, or: $value.lowestBin),
      highestBin: data.get(#highestBin, or: $value.highestBin));

  @override
  MomentumCopyWith<$R2, Momentum, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MomentumCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class OverviewMapper extends ClassMapperBase<Overview> {
  OverviewMapper._();

  static OverviewMapper? _instance;
  static OverviewMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OverviewMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Overview';

  static int _$discardValue(Overview v) => v.discardValue;
  static const Field<Overview, int> _f$discardValue =
      Field('discardValue', _$discardValue);

  @override
  final MappableFields<Overview> fields = const {
    #discardValue: _f$discardValue,
  };

  static Overview _instantiate(DecodingData data) {
    return Overview(discardValue: data.dec(_f$discardValue));
  }

  @override
  final Function instantiate = _instantiate;

  static Overview fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Overview>(map);
  }

  static Overview fromJson(String json) {
    return ensureInitialized().decodeJson<Overview>(json);
  }
}

mixin OverviewMappable {
  String toJson() {
    return OverviewMapper.ensureInitialized()
        .encodeJson<Overview>(this as Overview);
  }

  Map<String, dynamic> toMap() {
    return OverviewMapper.ensureInitialized()
        .encodeMap<Overview>(this as Overview);
  }

  OverviewCopyWith<Overview, Overview, Overview> get copyWith =>
      _OverviewCopyWithImpl<Overview, Overview>(
          this as Overview, $identity, $identity);
  @override
  String toString() {
    return OverviewMapper.ensureInitialized().stringifyValue(this as Overview);
  }

  @override
  bool operator ==(Object other) {
    return OverviewMapper.ensureInitialized()
        .equalsValue(this as Overview, other);
  }

  @override
  int get hashCode {
    return OverviewMapper.ensureInitialized().hashValue(this as Overview);
  }
}

extension OverviewValueCopy<$R, $Out> on ObjectCopyWith<$R, Overview, $Out> {
  OverviewCopyWith<$R, Overview, $Out> get $asOverview =>
      $base.as((v, t, t2) => _OverviewCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class OverviewCopyWith<$R, $In extends Overview, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? discardValue});
  OverviewCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OverviewCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Overview, $Out>
    implements OverviewCopyWith<$R, Overview, $Out> {
  _OverviewCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Overview> $mapper =
      OverviewMapper.ensureInitialized();
  @override
  $R call({int? discardValue}) => $apply(FieldCopyWithData(
      {if (discardValue != null) #discardValue: discardValue}));
  @override
  Overview $make(CopyWithData data) =>
      Overview(discardValue: data.get(#discardValue, or: $value.discardValue));

  @override
  OverviewCopyWith<$R2, Overview, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OverviewCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
