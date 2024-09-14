// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'auth_state_bloc.dart';

class AuthStateEventMapper extends ClassMapperBase<AuthStateEvent> {
  AuthStateEventMapper._();

  static AuthStateEventMapper? _instance;
  static AuthStateEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateEventMapper._());
      InitMapper.ensureInitialized();
      SignedInMapper.ensureInitialized();
      SignedOutMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuthStateEvent';

  @override
  final MappableFields<AuthStateEvent> fields = const {};

  static AuthStateEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'AuthStateEvent', 'event', '${data.value['event']}');
  }

  @override
  final Function instantiate = _instantiate;

  static AuthStateEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthStateEvent>(map);
  }

  static AuthStateEvent fromJson(String json) {
    return ensureInitialized().decodeJson<AuthStateEvent>(json);
  }
}

mixin AuthStateEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  AuthStateEventCopyWith<AuthStateEvent, AuthStateEvent, AuthStateEvent>
      get copyWith;
}

abstract class AuthStateEventCopyWith<$R, $In extends AuthStateEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  AuthStateEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class InitMapper extends SubClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      AuthStateEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Init';

  @override
  final MappableFields<Init> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'init';
  @override
  late final ClassMapperBase superMapper =
      AuthStateEventMapper.ensureInitialized();

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
    implements AuthStateEventCopyWith<$R, $In, $Out> {
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

class SignedInMapper extends SubClassMapperBase<SignedIn> {
  SignedInMapper._();

  static SignedInMapper? _instance;
  static SignedInMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SignedInMapper._());
      AuthStateEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'SignedIn';

  @override
  final MappableFields<SignedIn> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'signedIn';
  @override
  late final ClassMapperBase superMapper =
      AuthStateEventMapper.ensureInitialized();

  static SignedIn _instantiate(DecodingData data) {
    return SignedIn();
  }

  @override
  final Function instantiate = _instantiate;

  static SignedIn fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SignedIn>(map);
  }

  static SignedIn fromJson(String json) {
    return ensureInitialized().decodeJson<SignedIn>(json);
  }
}

mixin SignedInMappable {
  String toJson() {
    return SignedInMapper.ensureInitialized()
        .encodeJson<SignedIn>(this as SignedIn);
  }

  Map<String, dynamic> toMap() {
    return SignedInMapper.ensureInitialized()
        .encodeMap<SignedIn>(this as SignedIn);
  }

  SignedInCopyWith<SignedIn, SignedIn, SignedIn> get copyWith =>
      _SignedInCopyWithImpl(this as SignedIn, $identity, $identity);
  @override
  String toString() {
    return SignedInMapper.ensureInitialized().stringifyValue(this as SignedIn);
  }

  @override
  bool operator ==(Object other) {
    return SignedInMapper.ensureInitialized()
        .equalsValue(this as SignedIn, other);
  }

  @override
  int get hashCode {
    return SignedInMapper.ensureInitialized().hashValue(this as SignedIn);
  }
}

extension SignedInValueCopy<$R, $Out> on ObjectCopyWith<$R, SignedIn, $Out> {
  SignedInCopyWith<$R, SignedIn, $Out> get $asSignedIn =>
      $base.as((v, t, t2) => _SignedInCopyWithImpl(v, t, t2));
}

abstract class SignedInCopyWith<$R, $In extends SignedIn, $Out>
    implements AuthStateEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  SignedInCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SignedInCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SignedIn, $Out>
    implements SignedInCopyWith<$R, SignedIn, $Out> {
  _SignedInCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SignedIn> $mapper =
      SignedInMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  SignedIn $make(CopyWithData data) => SignedIn();

  @override
  SignedInCopyWith<$R2, SignedIn, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SignedInCopyWithImpl($value, $cast, t);
}

class SignedOutMapper extends SubClassMapperBase<SignedOut> {
  SignedOutMapper._();

  static SignedOutMapper? _instance;
  static SignedOutMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SignedOutMapper._());
      AuthStateEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'SignedOut';

  @override
  final MappableFields<SignedOut> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'signedOut';
  @override
  late final ClassMapperBase superMapper =
      AuthStateEventMapper.ensureInitialized();

  static SignedOut _instantiate(DecodingData data) {
    return SignedOut();
  }

  @override
  final Function instantiate = _instantiate;

  static SignedOut fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SignedOut>(map);
  }

  static SignedOut fromJson(String json) {
    return ensureInitialized().decodeJson<SignedOut>(json);
  }
}

mixin SignedOutMappable {
  String toJson() {
    return SignedOutMapper.ensureInitialized()
        .encodeJson<SignedOut>(this as SignedOut);
  }

  Map<String, dynamic> toMap() {
    return SignedOutMapper.ensureInitialized()
        .encodeMap<SignedOut>(this as SignedOut);
  }

  SignedOutCopyWith<SignedOut, SignedOut, SignedOut> get copyWith =>
      _SignedOutCopyWithImpl(this as SignedOut, $identity, $identity);
  @override
  String toString() {
    return SignedOutMapper.ensureInitialized()
        .stringifyValue(this as SignedOut);
  }

  @override
  bool operator ==(Object other) {
    return SignedOutMapper.ensureInitialized()
        .equalsValue(this as SignedOut, other);
  }

  @override
  int get hashCode {
    return SignedOutMapper.ensureInitialized().hashValue(this as SignedOut);
  }
}

extension SignedOutValueCopy<$R, $Out> on ObjectCopyWith<$R, SignedOut, $Out> {
  SignedOutCopyWith<$R, SignedOut, $Out> get $asSignedOut =>
      $base.as((v, t, t2) => _SignedOutCopyWithImpl(v, t, t2));
}

abstract class SignedOutCopyWith<$R, $In extends SignedOut, $Out>
    implements AuthStateEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  SignedOutCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SignedOutCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SignedOut, $Out>
    implements SignedOutCopyWith<$R, SignedOut, $Out> {
  _SignedOutCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SignedOut> $mapper =
      SignedOutMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  SignedOut $make(CopyWithData data) => SignedOut();

  @override
  SignedOutCopyWith<$R2, SignedOut, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SignedOutCopyWithImpl($value, $cast, t);
}

class AuthStateStateMapper extends ClassMapperBase<AuthStateState> {
  AuthStateStateMapper._();

  static AuthStateStateMapper? _instance;
  static AuthStateStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AuthStateState';

  static Session? _$session(AuthStateState v) => v.session;
  static const Field<AuthStateState, Session> _f$session =
      Field('session', _$session, opt: true);

  @override
  final MappableFields<AuthStateState> fields = const {
    #session: _f$session,
  };

  static AuthStateState _instantiate(DecodingData data) {
    return AuthStateState(session: data.dec(_f$session));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthStateState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthStateState>(map);
  }

  static AuthStateState fromJson(String json) {
    return ensureInitialized().decodeJson<AuthStateState>(json);
  }
}

mixin AuthStateStateMappable {
  String toJson() {
    return AuthStateStateMapper.ensureInitialized()
        .encodeJson<AuthStateState>(this as AuthStateState);
  }

  Map<String, dynamic> toMap() {
    return AuthStateStateMapper.ensureInitialized()
        .encodeMap<AuthStateState>(this as AuthStateState);
  }

  AuthStateStateCopyWith<AuthStateState, AuthStateState, AuthStateState>
      get copyWith => _AuthStateStateCopyWithImpl(
          this as AuthStateState, $identity, $identity);
  @override
  String toString() {
    return AuthStateStateMapper.ensureInitialized()
        .stringifyValue(this as AuthStateState);
  }

  @override
  bool operator ==(Object other) {
    return AuthStateStateMapper.ensureInitialized()
        .equalsValue(this as AuthStateState, other);
  }

  @override
  int get hashCode {
    return AuthStateStateMapper.ensureInitialized()
        .hashValue(this as AuthStateState);
  }
}

extension AuthStateStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthStateState, $Out> {
  AuthStateStateCopyWith<$R, AuthStateState, $Out> get $asAuthStateState =>
      $base.as((v, t, t2) => _AuthStateStateCopyWithImpl(v, t, t2));
}

abstract class AuthStateStateCopyWith<$R, $In extends AuthStateState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({Session? session});
  AuthStateStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthStateStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthStateState, $Out>
    implements AuthStateStateCopyWith<$R, AuthStateState, $Out> {
  _AuthStateStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthStateState> $mapper =
      AuthStateStateMapper.ensureInitialized();
  @override
  $R call({Object? session = $none}) =>
      $apply(FieldCopyWithData({if (session != $none) #session: session}));
  @override
  AuthStateState $make(CopyWithData data) =>
      AuthStateState(session: data.get(#session, or: $value.session));

  @override
  AuthStateStateCopyWith<$R2, AuthStateState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthStateStateCopyWithImpl($value, $cast, t);
}
