// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'menu_bloc.dart';

class MenuEventMapper extends ClassMapperBase<MenuEvent> {
  MenuEventMapper._();

  static MenuEventMapper? _instance;
  static MenuEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MenuEventMapper._());
      InitMapper.ensureInitialized();
      SignInTapMapper.ensureInitialized();
      CompareTapMapper.ensureInitialized();
      PlayersTapMapper.ensureInitialized();
      PopularTapMapper.ensureInitialized();
      LogoutTapMapper.ensureInitialized();
      CheapestByRatingTapMapper.ensureInitialized();
      PrivacyPolicyTapMapper.ensureInitialized();
      AboutUsTapMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MenuEvent';

  @override
  final MappableFields<MenuEvent> fields = const {};

  static MenuEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'MenuEvent', 'MenuEvent', '${data.value['MenuEvent']}');
  }

  @override
  final Function instantiate = _instantiate;

  static MenuEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MenuEvent>(map);
  }

  static MenuEvent fromJson(String json) {
    return ensureInitialized().decodeJson<MenuEvent>(json);
  }
}

mixin MenuEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  MenuEventCopyWith<MenuEvent, MenuEvent, MenuEvent> get copyWith;
}

abstract class MenuEventCopyWith<$R, $In extends MenuEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  MenuEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class InitMapper extends SubClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      MenuEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Init';

  @override
  final MappableFields<Init> fields = const {};

  @override
  final String discriminatorKey = 'MenuEvent';
  @override
  final dynamic discriminatorValue = 'init';
  @override
  late final ClassMapperBase superMapper = MenuEventMapper.ensureInitialized();

  static Init _instantiate(DecodingData data) {
    return Init();
  }

  @override
  final Function instantiate = _instantiate;

  static Init fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Init>(map);
  }

  static Init fromJson(String json) {
    return ensureInitialized().decodeJson<Init>(json);
  }
}

mixin InitMappable {
  String toJson() {
    return InitMapper.ensureInitialized().encodeJson<Init>(this as Init);
  }

  Map<String, dynamic> toMap() {
    return InitMapper.ensureInitialized().encodeMap<Init>(this as Init);
  }

  InitCopyWith<Init, Init, Init> get copyWith =>
      _InitCopyWithImpl(this as Init, $identity, $identity);
  @override
  String toString() {
    return InitMapper.ensureInitialized().stringifyValue(this as Init);
  }

  @override
  bool operator ==(Object other) {
    return InitMapper.ensureInitialized().equalsValue(this as Init, other);
  }

  @override
  int get hashCode {
    return InitMapper.ensureInitialized().hashValue(this as Init);
  }
}

extension InitValueCopy<$R, $Out> on ObjectCopyWith<$R, Init, $Out> {
  InitCopyWith<$R, Init, $Out> get $asInit =>
      $base.as((v, t, t2) => _InitCopyWithImpl(v, t, t2));
}

abstract class InitCopyWith<$R, $In extends Init, $Out>
    implements MenuEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  InitCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _InitCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Init, $Out>
    implements InitCopyWith<$R, Init, $Out> {
  _InitCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Init> $mapper = InitMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  Init $make(CopyWithData data) => Init();

  @override
  InitCopyWith<$R2, Init, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _InitCopyWithImpl($value, $cast, t);
}

class SignInTapMapper extends SubClassMapperBase<SignInTap> {
  SignInTapMapper._();

  static SignInTapMapper? _instance;
  static SignInTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SignInTapMapper._());
      MenuEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'SignInTap';

  @override
  final MappableFields<SignInTap> fields = const {};

  @override
  final String discriminatorKey = 'MenuEvent';
  @override
  final dynamic discriminatorValue = 'signInTap';
  @override
  late final ClassMapperBase superMapper = MenuEventMapper.ensureInitialized();

  static SignInTap _instantiate(DecodingData data) {
    return SignInTap();
  }

  @override
  final Function instantiate = _instantiate;

  static SignInTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SignInTap>(map);
  }

  static SignInTap fromJson(String json) {
    return ensureInitialized().decodeJson<SignInTap>(json);
  }
}

mixin SignInTapMappable {
  String toJson() {
    return SignInTapMapper.ensureInitialized()
        .encodeJson<SignInTap>(this as SignInTap);
  }

  Map<String, dynamic> toMap() {
    return SignInTapMapper.ensureInitialized()
        .encodeMap<SignInTap>(this as SignInTap);
  }

  SignInTapCopyWith<SignInTap, SignInTap, SignInTap> get copyWith =>
      _SignInTapCopyWithImpl(this as SignInTap, $identity, $identity);
  @override
  String toString() {
    return SignInTapMapper.ensureInitialized()
        .stringifyValue(this as SignInTap);
  }

  @override
  bool operator ==(Object other) {
    return SignInTapMapper.ensureInitialized()
        .equalsValue(this as SignInTap, other);
  }

  @override
  int get hashCode {
    return SignInTapMapper.ensureInitialized().hashValue(this as SignInTap);
  }
}

extension SignInTapValueCopy<$R, $Out> on ObjectCopyWith<$R, SignInTap, $Out> {
  SignInTapCopyWith<$R, SignInTap, $Out> get $asSignInTap =>
      $base.as((v, t, t2) => _SignInTapCopyWithImpl(v, t, t2));
}

abstract class SignInTapCopyWith<$R, $In extends SignInTap, $Out>
    implements MenuEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  SignInTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SignInTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SignInTap, $Out>
    implements SignInTapCopyWith<$R, SignInTap, $Out> {
  _SignInTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SignInTap> $mapper =
      SignInTapMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  SignInTap $make(CopyWithData data) => SignInTap();

  @override
  SignInTapCopyWith<$R2, SignInTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SignInTapCopyWithImpl($value, $cast, t);
}

class CompareTapMapper extends SubClassMapperBase<CompareTap> {
  CompareTapMapper._();

  static CompareTapMapper? _instance;
  static CompareTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CompareTapMapper._());
      MenuEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'CompareTap';

  @override
  final MappableFields<CompareTap> fields = const {};

  @override
  final String discriminatorKey = 'MenuEvent';
  @override
  final dynamic discriminatorValue = 'compareTap';
  @override
  late final ClassMapperBase superMapper = MenuEventMapper.ensureInitialized();

  static CompareTap _instantiate(DecodingData data) {
    return CompareTap();
  }

  @override
  final Function instantiate = _instantiate;

  static CompareTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CompareTap>(map);
  }

  static CompareTap fromJson(String json) {
    return ensureInitialized().decodeJson<CompareTap>(json);
  }
}

mixin CompareTapMappable {
  String toJson() {
    return CompareTapMapper.ensureInitialized()
        .encodeJson<CompareTap>(this as CompareTap);
  }

  Map<String, dynamic> toMap() {
    return CompareTapMapper.ensureInitialized()
        .encodeMap<CompareTap>(this as CompareTap);
  }

  CompareTapCopyWith<CompareTap, CompareTap, CompareTap> get copyWith =>
      _CompareTapCopyWithImpl(this as CompareTap, $identity, $identity);
  @override
  String toString() {
    return CompareTapMapper.ensureInitialized()
        .stringifyValue(this as CompareTap);
  }

  @override
  bool operator ==(Object other) {
    return CompareTapMapper.ensureInitialized()
        .equalsValue(this as CompareTap, other);
  }

  @override
  int get hashCode {
    return CompareTapMapper.ensureInitialized().hashValue(this as CompareTap);
  }
}

extension CompareTapValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CompareTap, $Out> {
  CompareTapCopyWith<$R, CompareTap, $Out> get $asCompareTap =>
      $base.as((v, t, t2) => _CompareTapCopyWithImpl(v, t, t2));
}

abstract class CompareTapCopyWith<$R, $In extends CompareTap, $Out>
    implements MenuEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  CompareTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CompareTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CompareTap, $Out>
    implements CompareTapCopyWith<$R, CompareTap, $Out> {
  _CompareTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CompareTap> $mapper =
      CompareTapMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  CompareTap $make(CopyWithData data) => CompareTap();

  @override
  CompareTapCopyWith<$R2, CompareTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CompareTapCopyWithImpl($value, $cast, t);
}

class PlayersTapMapper extends SubClassMapperBase<PlayersTap> {
  PlayersTapMapper._();

  static PlayersTapMapper? _instance;
  static PlayersTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayersTapMapper._());
      MenuEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'PlayersTap';

  @override
  final MappableFields<PlayersTap> fields = const {};

  @override
  final String discriminatorKey = 'MenuEvent';
  @override
  final dynamic discriminatorValue = 'playersTap';
  @override
  late final ClassMapperBase superMapper = MenuEventMapper.ensureInitialized();

  static PlayersTap _instantiate(DecodingData data) {
    return PlayersTap();
  }

  @override
  final Function instantiate = _instantiate;

  static PlayersTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayersTap>(map);
  }

  static PlayersTap fromJson(String json) {
    return ensureInitialized().decodeJson<PlayersTap>(json);
  }
}

mixin PlayersTapMappable {
  String toJson() {
    return PlayersTapMapper.ensureInitialized()
        .encodeJson<PlayersTap>(this as PlayersTap);
  }

  Map<String, dynamic> toMap() {
    return PlayersTapMapper.ensureInitialized()
        .encodeMap<PlayersTap>(this as PlayersTap);
  }

  PlayersTapCopyWith<PlayersTap, PlayersTap, PlayersTap> get copyWith =>
      _PlayersTapCopyWithImpl(this as PlayersTap, $identity, $identity);
  @override
  String toString() {
    return PlayersTapMapper.ensureInitialized()
        .stringifyValue(this as PlayersTap);
  }

  @override
  bool operator ==(Object other) {
    return PlayersTapMapper.ensureInitialized()
        .equalsValue(this as PlayersTap, other);
  }

  @override
  int get hashCode {
    return PlayersTapMapper.ensureInitialized().hashValue(this as PlayersTap);
  }
}

extension PlayersTapValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlayersTap, $Out> {
  PlayersTapCopyWith<$R, PlayersTap, $Out> get $asPlayersTap =>
      $base.as((v, t, t2) => _PlayersTapCopyWithImpl(v, t, t2));
}

abstract class PlayersTapCopyWith<$R, $In extends PlayersTap, $Out>
    implements MenuEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  PlayersTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlayersTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlayersTap, $Out>
    implements PlayersTapCopyWith<$R, PlayersTap, $Out> {
  _PlayersTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlayersTap> $mapper =
      PlayersTapMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  PlayersTap $make(CopyWithData data) => PlayersTap();

  @override
  PlayersTapCopyWith<$R2, PlayersTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlayersTapCopyWithImpl($value, $cast, t);
}

class PopularTapMapper extends SubClassMapperBase<PopularTap> {
  PopularTapMapper._();

  static PopularTapMapper? _instance;
  static PopularTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PopularTapMapper._());
      MenuEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'PopularTap';

  @override
  final MappableFields<PopularTap> fields = const {};

  @override
  final String discriminatorKey = 'MenuEvent';
  @override
  final dynamic discriminatorValue = 'popularTap';
  @override
  late final ClassMapperBase superMapper = MenuEventMapper.ensureInitialized();

  static PopularTap _instantiate(DecodingData data) {
    return PopularTap();
  }

  @override
  final Function instantiate = _instantiate;

  static PopularTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PopularTap>(map);
  }

  static PopularTap fromJson(String json) {
    return ensureInitialized().decodeJson<PopularTap>(json);
  }
}

mixin PopularTapMappable {
  String toJson() {
    return PopularTapMapper.ensureInitialized()
        .encodeJson<PopularTap>(this as PopularTap);
  }

  Map<String, dynamic> toMap() {
    return PopularTapMapper.ensureInitialized()
        .encodeMap<PopularTap>(this as PopularTap);
  }

  PopularTapCopyWith<PopularTap, PopularTap, PopularTap> get copyWith =>
      _PopularTapCopyWithImpl(this as PopularTap, $identity, $identity);
  @override
  String toString() {
    return PopularTapMapper.ensureInitialized()
        .stringifyValue(this as PopularTap);
  }

  @override
  bool operator ==(Object other) {
    return PopularTapMapper.ensureInitialized()
        .equalsValue(this as PopularTap, other);
  }

  @override
  int get hashCode {
    return PopularTapMapper.ensureInitialized().hashValue(this as PopularTap);
  }
}

extension PopularTapValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PopularTap, $Out> {
  PopularTapCopyWith<$R, PopularTap, $Out> get $asPopularTap =>
      $base.as((v, t, t2) => _PopularTapCopyWithImpl(v, t, t2));
}

abstract class PopularTapCopyWith<$R, $In extends PopularTap, $Out>
    implements MenuEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  PopularTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PopularTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PopularTap, $Out>
    implements PopularTapCopyWith<$R, PopularTap, $Out> {
  _PopularTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PopularTap> $mapper =
      PopularTapMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  PopularTap $make(CopyWithData data) => PopularTap();

  @override
  PopularTapCopyWith<$R2, PopularTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PopularTapCopyWithImpl($value, $cast, t);
}

class LogoutTapMapper extends SubClassMapperBase<LogoutTap> {
  LogoutTapMapper._();

  static LogoutTapMapper? _instance;
  static LogoutTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LogoutTapMapper._());
      MenuEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'LogoutTap';

  @override
  final MappableFields<LogoutTap> fields = const {};

  @override
  final String discriminatorKey = 'MenuEvent';
  @override
  final dynamic discriminatorValue = 'logoutTap';
  @override
  late final ClassMapperBase superMapper = MenuEventMapper.ensureInitialized();

  static LogoutTap _instantiate(DecodingData data) {
    return LogoutTap();
  }

  @override
  final Function instantiate = _instantiate;

  static LogoutTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LogoutTap>(map);
  }

  static LogoutTap fromJson(String json) {
    return ensureInitialized().decodeJson<LogoutTap>(json);
  }
}

mixin LogoutTapMappable {
  String toJson() {
    return LogoutTapMapper.ensureInitialized()
        .encodeJson<LogoutTap>(this as LogoutTap);
  }

  Map<String, dynamic> toMap() {
    return LogoutTapMapper.ensureInitialized()
        .encodeMap<LogoutTap>(this as LogoutTap);
  }

  LogoutTapCopyWith<LogoutTap, LogoutTap, LogoutTap> get copyWith =>
      _LogoutTapCopyWithImpl(this as LogoutTap, $identity, $identity);
  @override
  String toString() {
    return LogoutTapMapper.ensureInitialized()
        .stringifyValue(this as LogoutTap);
  }

  @override
  bool operator ==(Object other) {
    return LogoutTapMapper.ensureInitialized()
        .equalsValue(this as LogoutTap, other);
  }

  @override
  int get hashCode {
    return LogoutTapMapper.ensureInitialized().hashValue(this as LogoutTap);
  }
}

extension LogoutTapValueCopy<$R, $Out> on ObjectCopyWith<$R, LogoutTap, $Out> {
  LogoutTapCopyWith<$R, LogoutTap, $Out> get $asLogoutTap =>
      $base.as((v, t, t2) => _LogoutTapCopyWithImpl(v, t, t2));
}

abstract class LogoutTapCopyWith<$R, $In extends LogoutTap, $Out>
    implements MenuEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  LogoutTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LogoutTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LogoutTap, $Out>
    implements LogoutTapCopyWith<$R, LogoutTap, $Out> {
  _LogoutTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LogoutTap> $mapper =
      LogoutTapMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  LogoutTap $make(CopyWithData data) => LogoutTap();

  @override
  LogoutTapCopyWith<$R2, LogoutTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LogoutTapCopyWithImpl($value, $cast, t);
}

class CheapestByRatingTapMapper
    extends SubClassMapperBase<CheapestByRatingTap> {
  CheapestByRatingTapMapper._();

  static CheapestByRatingTapMapper? _instance;
  static CheapestByRatingTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CheapestByRatingTapMapper._());
      MenuEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'CheapestByRatingTap';

  @override
  final MappableFields<CheapestByRatingTap> fields = const {};

  @override
  final String discriminatorKey = 'MenuEvent';
  @override
  final dynamic discriminatorValue = 'cheapestByRatingTap';
  @override
  late final ClassMapperBase superMapper = MenuEventMapper.ensureInitialized();

  static CheapestByRatingTap _instantiate(DecodingData data) {
    return CheapestByRatingTap();
  }

  @override
  final Function instantiate = _instantiate;

  static CheapestByRatingTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CheapestByRatingTap>(map);
  }

  static CheapestByRatingTap fromJson(String json) {
    return ensureInitialized().decodeJson<CheapestByRatingTap>(json);
  }
}

mixin CheapestByRatingTapMappable {
  String toJson() {
    return CheapestByRatingTapMapper.ensureInitialized()
        .encodeJson<CheapestByRatingTap>(this as CheapestByRatingTap);
  }

  Map<String, dynamic> toMap() {
    return CheapestByRatingTapMapper.ensureInitialized()
        .encodeMap<CheapestByRatingTap>(this as CheapestByRatingTap);
  }

  CheapestByRatingTapCopyWith<CheapestByRatingTap, CheapestByRatingTap,
          CheapestByRatingTap>
      get copyWith => _CheapestByRatingTapCopyWithImpl(
          this as CheapestByRatingTap, $identity, $identity);
  @override
  String toString() {
    return CheapestByRatingTapMapper.ensureInitialized()
        .stringifyValue(this as CheapestByRatingTap);
  }

  @override
  bool operator ==(Object other) {
    return CheapestByRatingTapMapper.ensureInitialized()
        .equalsValue(this as CheapestByRatingTap, other);
  }

  @override
  int get hashCode {
    return CheapestByRatingTapMapper.ensureInitialized()
        .hashValue(this as CheapestByRatingTap);
  }
}

extension CheapestByRatingTapValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CheapestByRatingTap, $Out> {
  CheapestByRatingTapCopyWith<$R, CheapestByRatingTap, $Out>
      get $asCheapestByRatingTap =>
          $base.as((v, t, t2) => _CheapestByRatingTapCopyWithImpl(v, t, t2));
}

abstract class CheapestByRatingTapCopyWith<$R, $In extends CheapestByRatingTap,
    $Out> implements MenuEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  CheapestByRatingTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CheapestByRatingTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CheapestByRatingTap, $Out>
    implements CheapestByRatingTapCopyWith<$R, CheapestByRatingTap, $Out> {
  _CheapestByRatingTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CheapestByRatingTap> $mapper =
      CheapestByRatingTapMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  CheapestByRatingTap $make(CopyWithData data) => CheapestByRatingTap();

  @override
  CheapestByRatingTapCopyWith<$R2, CheapestByRatingTap, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CheapestByRatingTapCopyWithImpl($value, $cast, t);
}

class PrivacyPolicyTapMapper extends SubClassMapperBase<PrivacyPolicyTap> {
  PrivacyPolicyTapMapper._();

  static PrivacyPolicyTapMapper? _instance;
  static PrivacyPolicyTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PrivacyPolicyTapMapper._());
      MenuEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'PrivacyPolicyTap';

  @override
  final MappableFields<PrivacyPolicyTap> fields = const {};

  @override
  final String discriminatorKey = 'MenuEvent';
  @override
  final dynamic discriminatorValue = 'privacyPolicyTap';
  @override
  late final ClassMapperBase superMapper = MenuEventMapper.ensureInitialized();

  static PrivacyPolicyTap _instantiate(DecodingData data) {
    return PrivacyPolicyTap();
  }

  @override
  final Function instantiate = _instantiate;

  static PrivacyPolicyTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PrivacyPolicyTap>(map);
  }

  static PrivacyPolicyTap fromJson(String json) {
    return ensureInitialized().decodeJson<PrivacyPolicyTap>(json);
  }
}

mixin PrivacyPolicyTapMappable {
  String toJson() {
    return PrivacyPolicyTapMapper.ensureInitialized()
        .encodeJson<PrivacyPolicyTap>(this as PrivacyPolicyTap);
  }

  Map<String, dynamic> toMap() {
    return PrivacyPolicyTapMapper.ensureInitialized()
        .encodeMap<PrivacyPolicyTap>(this as PrivacyPolicyTap);
  }

  PrivacyPolicyTapCopyWith<PrivacyPolicyTap, PrivacyPolicyTap, PrivacyPolicyTap>
      get copyWith => _PrivacyPolicyTapCopyWithImpl(
          this as PrivacyPolicyTap, $identity, $identity);
  @override
  String toString() {
    return PrivacyPolicyTapMapper.ensureInitialized()
        .stringifyValue(this as PrivacyPolicyTap);
  }

  @override
  bool operator ==(Object other) {
    return PrivacyPolicyTapMapper.ensureInitialized()
        .equalsValue(this as PrivacyPolicyTap, other);
  }

  @override
  int get hashCode {
    return PrivacyPolicyTapMapper.ensureInitialized()
        .hashValue(this as PrivacyPolicyTap);
  }
}

extension PrivacyPolicyTapValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PrivacyPolicyTap, $Out> {
  PrivacyPolicyTapCopyWith<$R, PrivacyPolicyTap, $Out>
      get $asPrivacyPolicyTap =>
          $base.as((v, t, t2) => _PrivacyPolicyTapCopyWithImpl(v, t, t2));
}

abstract class PrivacyPolicyTapCopyWith<$R, $In extends PrivacyPolicyTap, $Out>
    implements MenuEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  PrivacyPolicyTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PrivacyPolicyTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PrivacyPolicyTap, $Out>
    implements PrivacyPolicyTapCopyWith<$R, PrivacyPolicyTap, $Out> {
  _PrivacyPolicyTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PrivacyPolicyTap> $mapper =
      PrivacyPolicyTapMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  PrivacyPolicyTap $make(CopyWithData data) => PrivacyPolicyTap();

  @override
  PrivacyPolicyTapCopyWith<$R2, PrivacyPolicyTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PrivacyPolicyTapCopyWithImpl($value, $cast, t);
}

class AboutUsTapMapper extends SubClassMapperBase<AboutUsTap> {
  AboutUsTapMapper._();

  static AboutUsTapMapper? _instance;
  static AboutUsTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AboutUsTapMapper._());
      MenuEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'AboutUsTap';

  @override
  final MappableFields<AboutUsTap> fields = const {};

  @override
  final String discriminatorKey = 'MenuEvent';
  @override
  final dynamic discriminatorValue = 'aboutUsTap';
  @override
  late final ClassMapperBase superMapper = MenuEventMapper.ensureInitialized();

  static AboutUsTap _instantiate(DecodingData data) {
    return AboutUsTap();
  }

  @override
  final Function instantiate = _instantiate;

  static AboutUsTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AboutUsTap>(map);
  }

  static AboutUsTap fromJson(String json) {
    return ensureInitialized().decodeJson<AboutUsTap>(json);
  }
}

mixin AboutUsTapMappable {
  String toJson() {
    return AboutUsTapMapper.ensureInitialized()
        .encodeJson<AboutUsTap>(this as AboutUsTap);
  }

  Map<String, dynamic> toMap() {
    return AboutUsTapMapper.ensureInitialized()
        .encodeMap<AboutUsTap>(this as AboutUsTap);
  }

  AboutUsTapCopyWith<AboutUsTap, AboutUsTap, AboutUsTap> get copyWith =>
      _AboutUsTapCopyWithImpl(this as AboutUsTap, $identity, $identity);
  @override
  String toString() {
    return AboutUsTapMapper.ensureInitialized()
        .stringifyValue(this as AboutUsTap);
  }

  @override
  bool operator ==(Object other) {
    return AboutUsTapMapper.ensureInitialized()
        .equalsValue(this as AboutUsTap, other);
  }

  @override
  int get hashCode {
    return AboutUsTapMapper.ensureInitialized().hashValue(this as AboutUsTap);
  }
}

extension AboutUsTapValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AboutUsTap, $Out> {
  AboutUsTapCopyWith<$R, AboutUsTap, $Out> get $asAboutUsTap =>
      $base.as((v, t, t2) => _AboutUsTapCopyWithImpl(v, t, t2));
}

abstract class AboutUsTapCopyWith<$R, $In extends AboutUsTap, $Out>
    implements MenuEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  AboutUsTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AboutUsTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AboutUsTap, $Out>
    implements AboutUsTapCopyWith<$R, AboutUsTap, $Out> {
  _AboutUsTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AboutUsTap> $mapper =
      AboutUsTapMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  AboutUsTap $make(CopyWithData data) => AboutUsTap();

  @override
  AboutUsTapCopyWith<$R2, AboutUsTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AboutUsTapCopyWithImpl($value, $cast, t);
}

class MenuStateMapper extends ClassMapperBase<MenuState> {
  MenuStateMapper._();

  static MenuStateMapper? _instance;
  static MenuStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MenuStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MenuState';

  static int? _$playerCount(MenuState v) => v.playerCount;
  static const Field<MenuState, int> _f$playerCount =
      Field('playerCount', _$playerCount, opt: true);

  @override
  final MappableFields<MenuState> fields = const {
    #playerCount: _f$playerCount,
  };

  static MenuState _instantiate(DecodingData data) {
    return MenuState(playerCount: data.dec(_f$playerCount));
  }

  @override
  final Function instantiate = _instantiate;

  static MenuState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MenuState>(map);
  }

  static MenuState fromJson(String json) {
    return ensureInitialized().decodeJson<MenuState>(json);
  }
}

mixin MenuStateMappable {
  String toJson() {
    return MenuStateMapper.ensureInitialized()
        .encodeJson<MenuState>(this as MenuState);
  }

  Map<String, dynamic> toMap() {
    return MenuStateMapper.ensureInitialized()
        .encodeMap<MenuState>(this as MenuState);
  }

  MenuStateCopyWith<MenuState, MenuState, MenuState> get copyWith =>
      _MenuStateCopyWithImpl(this as MenuState, $identity, $identity);
  @override
  String toString() {
    return MenuStateMapper.ensureInitialized()
        .stringifyValue(this as MenuState);
  }

  @override
  bool operator ==(Object other) {
    return MenuStateMapper.ensureInitialized()
        .equalsValue(this as MenuState, other);
  }

  @override
  int get hashCode {
    return MenuStateMapper.ensureInitialized().hashValue(this as MenuState);
  }
}

extension MenuStateValueCopy<$R, $Out> on ObjectCopyWith<$R, MenuState, $Out> {
  MenuStateCopyWith<$R, MenuState, $Out> get $asMenuState =>
      $base.as((v, t, t2) => _MenuStateCopyWithImpl(v, t, t2));
}

abstract class MenuStateCopyWith<$R, $In extends MenuState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? playerCount});
  MenuStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MenuStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MenuState, $Out>
    implements MenuStateCopyWith<$R, MenuState, $Out> {
  _MenuStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MenuState> $mapper =
      MenuStateMapper.ensureInitialized();
  @override
  $R call({Object? playerCount = $none}) => $apply(
      FieldCopyWithData({if (playerCount != $none) #playerCount: playerCount}));
  @override
  MenuState $make(CopyWithData data) =>
      MenuState(playerCount: data.get(#playerCount, or: $value.playerCount));

  @override
  MenuStateCopyWith<$R2, MenuState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MenuStateCopyWithImpl($value, $cast, t);
}
