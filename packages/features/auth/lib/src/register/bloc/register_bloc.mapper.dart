// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'register_bloc.dart';

class RegisterEventMapper extends ClassMapperBase<RegisterEvent> {
  RegisterEventMapper._();

  static RegisterEventMapper? _instance;
  static RegisterEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegisterEventMapper._());
      RegisterMapper.ensureInitialized();
      AlreadyAUserTapMapper.ensureInitialized();
      NameUpdateMapper.ensureInitialized();
      EmailUpdateMapper.ensureInitialized();
      PasswordUpdateMapper.ensureInitialized();
      TermsConditionTapMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RegisterEvent';

  @override
  final MappableFields<RegisterEvent> fields = const {};

  static RegisterEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'RegisterEvent', 'registerEvent', '${data.value['registerEvent']}');
  }

  @override
  final Function instantiate = _instantiate;

  static RegisterEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RegisterEvent>(map);
  }

  static RegisterEvent fromJson(String json) {
    return ensureInitialized().decodeJson<RegisterEvent>(json);
  }
}

mixin RegisterEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  RegisterEventCopyWith<RegisterEvent, RegisterEvent, RegisterEvent>
      get copyWith;
}

abstract class RegisterEventCopyWith<$R, $In extends RegisterEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  RegisterEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class RegisterMapper extends SubClassMapperBase<Register> {
  RegisterMapper._();

  static RegisterMapper? _instance;
  static RegisterMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegisterMapper._());
      RegisterEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Register';

  @override
  final MappableFields<Register> fields = const {};

  @override
  final String discriminatorKey = 'registerEvent';
  @override
  final dynamic discriminatorValue = 'register';
  @override
  late final ClassMapperBase superMapper =
      RegisterEventMapper.ensureInitialized();

  static Register _instantiate(DecodingData data) {
    return Register();
  }

  @override
  final Function instantiate = _instantiate;

  static Register fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Register>(map);
  }

  static Register fromJson(String json) {
    return ensureInitialized().decodeJson<Register>(json);
  }
}

mixin RegisterMappable {
  String toJson() {
    return RegisterMapper.ensureInitialized()
        .encodeJson<Register>(this as Register);
  }

  Map<String, dynamic> toMap() {
    return RegisterMapper.ensureInitialized()
        .encodeMap<Register>(this as Register);
  }

  RegisterCopyWith<Register, Register, Register> get copyWith =>
      _RegisterCopyWithImpl<Register, Register>(
          this as Register, $identity, $identity);
  @override
  String toString() {
    return RegisterMapper.ensureInitialized().stringifyValue(this as Register);
  }

  @override
  bool operator ==(Object other) {
    return RegisterMapper.ensureInitialized()
        .equalsValue(this as Register, other);
  }

  @override
  int get hashCode {
    return RegisterMapper.ensureInitialized().hashValue(this as Register);
  }
}

extension RegisterValueCopy<$R, $Out> on ObjectCopyWith<$R, Register, $Out> {
  RegisterCopyWith<$R, Register, $Out> get $asRegister =>
      $base.as((v, t, t2) => _RegisterCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RegisterCopyWith<$R, $In extends Register, $Out>
    implements RegisterEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  RegisterCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RegisterCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Register, $Out>
    implements RegisterCopyWith<$R, Register, $Out> {
  _RegisterCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Register> $mapper =
      RegisterMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  Register $make(CopyWithData data) => Register();

  @override
  RegisterCopyWith<$R2, Register, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RegisterCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class AlreadyAUserTapMapper extends SubClassMapperBase<AlreadyAUserTap> {
  AlreadyAUserTapMapper._();

  static AlreadyAUserTapMapper? _instance;
  static AlreadyAUserTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AlreadyAUserTapMapper._());
      RegisterEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'AlreadyAUserTap';

  @override
  final MappableFields<AlreadyAUserTap> fields = const {};

  @override
  final String discriminatorKey = 'registerEvent';
  @override
  final dynamic discriminatorValue = 'alreadyAUserTap';
  @override
  late final ClassMapperBase superMapper =
      RegisterEventMapper.ensureInitialized();

  static AlreadyAUserTap _instantiate(DecodingData data) {
    return AlreadyAUserTap();
  }

  @override
  final Function instantiate = _instantiate;

  static AlreadyAUserTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AlreadyAUserTap>(map);
  }

  static AlreadyAUserTap fromJson(String json) {
    return ensureInitialized().decodeJson<AlreadyAUserTap>(json);
  }
}

mixin AlreadyAUserTapMappable {
  String toJson() {
    return AlreadyAUserTapMapper.ensureInitialized()
        .encodeJson<AlreadyAUserTap>(this as AlreadyAUserTap);
  }

  Map<String, dynamic> toMap() {
    return AlreadyAUserTapMapper.ensureInitialized()
        .encodeMap<AlreadyAUserTap>(this as AlreadyAUserTap);
  }

  AlreadyAUserTapCopyWith<AlreadyAUserTap, AlreadyAUserTap, AlreadyAUserTap>
      get copyWith =>
          _AlreadyAUserTapCopyWithImpl<AlreadyAUserTap, AlreadyAUserTap>(
              this as AlreadyAUserTap, $identity, $identity);
  @override
  String toString() {
    return AlreadyAUserTapMapper.ensureInitialized()
        .stringifyValue(this as AlreadyAUserTap);
  }

  @override
  bool operator ==(Object other) {
    return AlreadyAUserTapMapper.ensureInitialized()
        .equalsValue(this as AlreadyAUserTap, other);
  }

  @override
  int get hashCode {
    return AlreadyAUserTapMapper.ensureInitialized()
        .hashValue(this as AlreadyAUserTap);
  }
}

extension AlreadyAUserTapValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AlreadyAUserTap, $Out> {
  AlreadyAUserTapCopyWith<$R, AlreadyAUserTap, $Out> get $asAlreadyAUserTap =>
      $base.as((v, t, t2) => _AlreadyAUserTapCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AlreadyAUserTapCopyWith<$R, $In extends AlreadyAUserTap, $Out>
    implements RegisterEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  AlreadyAUserTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AlreadyAUserTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AlreadyAUserTap, $Out>
    implements AlreadyAUserTapCopyWith<$R, AlreadyAUserTap, $Out> {
  _AlreadyAUserTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AlreadyAUserTap> $mapper =
      AlreadyAUserTapMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  AlreadyAUserTap $make(CopyWithData data) => AlreadyAUserTap();

  @override
  AlreadyAUserTapCopyWith<$R2, AlreadyAUserTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AlreadyAUserTapCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class NameUpdateMapper extends SubClassMapperBase<NameUpdate> {
  NameUpdateMapper._();

  static NameUpdateMapper? _instance;
  static NameUpdateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NameUpdateMapper._());
      RegisterEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'NameUpdate';

  static String _$name(NameUpdate v) => v.name;
  static const Field<NameUpdate, String> _f$name = Field('name', _$name);

  @override
  final MappableFields<NameUpdate> fields = const {
    #name: _f$name,
  };

  @override
  final String discriminatorKey = 'registerEvent';
  @override
  final dynamic discriminatorValue = 'nameUpdate';
  @override
  late final ClassMapperBase superMapper =
      RegisterEventMapper.ensureInitialized();

  static NameUpdate _instantiate(DecodingData data) {
    return NameUpdate(data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static NameUpdate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NameUpdate>(map);
  }

  static NameUpdate fromJson(String json) {
    return ensureInitialized().decodeJson<NameUpdate>(json);
  }
}

mixin NameUpdateMappable {
  String toJson() {
    return NameUpdateMapper.ensureInitialized()
        .encodeJson<NameUpdate>(this as NameUpdate);
  }

  Map<String, dynamic> toMap() {
    return NameUpdateMapper.ensureInitialized()
        .encodeMap<NameUpdate>(this as NameUpdate);
  }

  NameUpdateCopyWith<NameUpdate, NameUpdate, NameUpdate> get copyWith =>
      _NameUpdateCopyWithImpl<NameUpdate, NameUpdate>(
          this as NameUpdate, $identity, $identity);
  @override
  String toString() {
    return NameUpdateMapper.ensureInitialized()
        .stringifyValue(this as NameUpdate);
  }

  @override
  bool operator ==(Object other) {
    return NameUpdateMapper.ensureInitialized()
        .equalsValue(this as NameUpdate, other);
  }

  @override
  int get hashCode {
    return NameUpdateMapper.ensureInitialized().hashValue(this as NameUpdate);
  }
}

extension NameUpdateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NameUpdate, $Out> {
  NameUpdateCopyWith<$R, NameUpdate, $Out> get $asNameUpdate =>
      $base.as((v, t, t2) => _NameUpdateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class NameUpdateCopyWith<$R, $In extends NameUpdate, $Out>
    implements RegisterEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? name});
  NameUpdateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NameUpdateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NameUpdate, $Out>
    implements NameUpdateCopyWith<$R, NameUpdate, $Out> {
  _NameUpdateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NameUpdate> $mapper =
      NameUpdateMapper.ensureInitialized();
  @override
  $R call({String? name}) =>
      $apply(FieldCopyWithData({if (name != null) #name: name}));
  @override
  NameUpdate $make(CopyWithData data) =>
      NameUpdate(data.get(#name, or: $value.name));

  @override
  NameUpdateCopyWith<$R2, NameUpdate, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NameUpdateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class EmailUpdateMapper extends SubClassMapperBase<EmailUpdate> {
  EmailUpdateMapper._();

  static EmailUpdateMapper? _instance;
  static EmailUpdateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EmailUpdateMapper._());
      RegisterEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'EmailUpdate';

  static String _$email(EmailUpdate v) => v.email;
  static const Field<EmailUpdate, String> _f$email = Field('email', _$email);

  @override
  final MappableFields<EmailUpdate> fields = const {
    #email: _f$email,
  };

  @override
  final String discriminatorKey = 'registerEvent';
  @override
  final dynamic discriminatorValue = 'emailUpdate';
  @override
  late final ClassMapperBase superMapper =
      RegisterEventMapper.ensureInitialized();

  static EmailUpdate _instantiate(DecodingData data) {
    return EmailUpdate(data.dec(_f$email));
  }

  @override
  final Function instantiate = _instantiate;

  static EmailUpdate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EmailUpdate>(map);
  }

  static EmailUpdate fromJson(String json) {
    return ensureInitialized().decodeJson<EmailUpdate>(json);
  }
}

mixin EmailUpdateMappable {
  String toJson() {
    return EmailUpdateMapper.ensureInitialized()
        .encodeJson<EmailUpdate>(this as EmailUpdate);
  }

  Map<String, dynamic> toMap() {
    return EmailUpdateMapper.ensureInitialized()
        .encodeMap<EmailUpdate>(this as EmailUpdate);
  }

  EmailUpdateCopyWith<EmailUpdate, EmailUpdate, EmailUpdate> get copyWith =>
      _EmailUpdateCopyWithImpl<EmailUpdate, EmailUpdate>(
          this as EmailUpdate, $identity, $identity);
  @override
  String toString() {
    return EmailUpdateMapper.ensureInitialized()
        .stringifyValue(this as EmailUpdate);
  }

  @override
  bool operator ==(Object other) {
    return EmailUpdateMapper.ensureInitialized()
        .equalsValue(this as EmailUpdate, other);
  }

  @override
  int get hashCode {
    return EmailUpdateMapper.ensureInitialized().hashValue(this as EmailUpdate);
  }
}

extension EmailUpdateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EmailUpdate, $Out> {
  EmailUpdateCopyWith<$R, EmailUpdate, $Out> get $asEmailUpdate =>
      $base.as((v, t, t2) => _EmailUpdateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EmailUpdateCopyWith<$R, $In extends EmailUpdate, $Out>
    implements RegisterEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? email});
  EmailUpdateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EmailUpdateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EmailUpdate, $Out>
    implements EmailUpdateCopyWith<$R, EmailUpdate, $Out> {
  _EmailUpdateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EmailUpdate> $mapper =
      EmailUpdateMapper.ensureInitialized();
  @override
  $R call({String? email}) =>
      $apply(FieldCopyWithData({if (email != null) #email: email}));
  @override
  EmailUpdate $make(CopyWithData data) =>
      EmailUpdate(data.get(#email, or: $value.email));

  @override
  EmailUpdateCopyWith<$R2, EmailUpdate, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _EmailUpdateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PasswordUpdateMapper extends SubClassMapperBase<PasswordUpdate> {
  PasswordUpdateMapper._();

  static PasswordUpdateMapper? _instance;
  static PasswordUpdateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PasswordUpdateMapper._());
      RegisterEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'PasswordUpdate';

  static String _$password(PasswordUpdate v) => v.password;
  static const Field<PasswordUpdate, String> _f$password =
      Field('password', _$password);

  @override
  final MappableFields<PasswordUpdate> fields = const {
    #password: _f$password,
  };

  @override
  final String discriminatorKey = 'registerEvent';
  @override
  final dynamic discriminatorValue = 'passwordUpdate';
  @override
  late final ClassMapperBase superMapper =
      RegisterEventMapper.ensureInitialized();

  static PasswordUpdate _instantiate(DecodingData data) {
    return PasswordUpdate(data.dec(_f$password));
  }

  @override
  final Function instantiate = _instantiate;

  static PasswordUpdate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PasswordUpdate>(map);
  }

  static PasswordUpdate fromJson(String json) {
    return ensureInitialized().decodeJson<PasswordUpdate>(json);
  }
}

mixin PasswordUpdateMappable {
  String toJson() {
    return PasswordUpdateMapper.ensureInitialized()
        .encodeJson<PasswordUpdate>(this as PasswordUpdate);
  }

  Map<String, dynamic> toMap() {
    return PasswordUpdateMapper.ensureInitialized()
        .encodeMap<PasswordUpdate>(this as PasswordUpdate);
  }

  PasswordUpdateCopyWith<PasswordUpdate, PasswordUpdate, PasswordUpdate>
      get copyWith =>
          _PasswordUpdateCopyWithImpl<PasswordUpdate, PasswordUpdate>(
              this as PasswordUpdate, $identity, $identity);
  @override
  String toString() {
    return PasswordUpdateMapper.ensureInitialized()
        .stringifyValue(this as PasswordUpdate);
  }

  @override
  bool operator ==(Object other) {
    return PasswordUpdateMapper.ensureInitialized()
        .equalsValue(this as PasswordUpdate, other);
  }

  @override
  int get hashCode {
    return PasswordUpdateMapper.ensureInitialized()
        .hashValue(this as PasswordUpdate);
  }
}

extension PasswordUpdateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PasswordUpdate, $Out> {
  PasswordUpdateCopyWith<$R, PasswordUpdate, $Out> get $asPasswordUpdate =>
      $base.as((v, t, t2) => _PasswordUpdateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PasswordUpdateCopyWith<$R, $In extends PasswordUpdate, $Out>
    implements RegisterEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? password});
  PasswordUpdateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PasswordUpdateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PasswordUpdate, $Out>
    implements PasswordUpdateCopyWith<$R, PasswordUpdate, $Out> {
  _PasswordUpdateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PasswordUpdate> $mapper =
      PasswordUpdateMapper.ensureInitialized();
  @override
  $R call({String? password}) =>
      $apply(FieldCopyWithData({if (password != null) #password: password}));
  @override
  PasswordUpdate $make(CopyWithData data) =>
      PasswordUpdate(data.get(#password, or: $value.password));

  @override
  PasswordUpdateCopyWith<$R2, PasswordUpdate, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PasswordUpdateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TermsConditionTapMapper extends SubClassMapperBase<TermsConditionTap> {
  TermsConditionTapMapper._();

  static TermsConditionTapMapper? _instance;
  static TermsConditionTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TermsConditionTapMapper._());
      RegisterEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'TermsConditionTap';

  static String _$password(TermsConditionTap v) => v.password;
  static const Field<TermsConditionTap, String> _f$password =
      Field('password', _$password);

  @override
  final MappableFields<TermsConditionTap> fields = const {
    #password: _f$password,
  };

  @override
  final String discriminatorKey = 'registerEvent';
  @override
  final dynamic discriminatorValue = 'termsConditionTap';
  @override
  late final ClassMapperBase superMapper =
      RegisterEventMapper.ensureInitialized();

  static TermsConditionTap _instantiate(DecodingData data) {
    return TermsConditionTap(data.dec(_f$password));
  }

  @override
  final Function instantiate = _instantiate;

  static TermsConditionTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TermsConditionTap>(map);
  }

  static TermsConditionTap fromJson(String json) {
    return ensureInitialized().decodeJson<TermsConditionTap>(json);
  }
}

mixin TermsConditionTapMappable {
  String toJson() {
    return TermsConditionTapMapper.ensureInitialized()
        .encodeJson<TermsConditionTap>(this as TermsConditionTap);
  }

  Map<String, dynamic> toMap() {
    return TermsConditionTapMapper.ensureInitialized()
        .encodeMap<TermsConditionTap>(this as TermsConditionTap);
  }

  TermsConditionTapCopyWith<TermsConditionTap, TermsConditionTap,
          TermsConditionTap>
      get copyWith =>
          _TermsConditionTapCopyWithImpl<TermsConditionTap, TermsConditionTap>(
              this as TermsConditionTap, $identity, $identity);
  @override
  String toString() {
    return TermsConditionTapMapper.ensureInitialized()
        .stringifyValue(this as TermsConditionTap);
  }

  @override
  bool operator ==(Object other) {
    return TermsConditionTapMapper.ensureInitialized()
        .equalsValue(this as TermsConditionTap, other);
  }

  @override
  int get hashCode {
    return TermsConditionTapMapper.ensureInitialized()
        .hashValue(this as TermsConditionTap);
  }
}

extension TermsConditionTapValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TermsConditionTap, $Out> {
  TermsConditionTapCopyWith<$R, TermsConditionTap, $Out>
      get $asTermsConditionTap => $base
          .as((v, t, t2) => _TermsConditionTapCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TermsConditionTapCopyWith<$R, $In extends TermsConditionTap,
    $Out> implements RegisterEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? password});
  TermsConditionTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TermsConditionTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TermsConditionTap, $Out>
    implements TermsConditionTapCopyWith<$R, TermsConditionTap, $Out> {
  _TermsConditionTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TermsConditionTap> $mapper =
      TermsConditionTapMapper.ensureInitialized();
  @override
  $R call({String? password}) =>
      $apply(FieldCopyWithData({if (password != null) #password: password}));
  @override
  TermsConditionTap $make(CopyWithData data) =>
      TermsConditionTap(data.get(#password, or: $value.password));

  @override
  TermsConditionTapCopyWith<$R2, TermsConditionTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TermsConditionTapCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RegisterStateMapper extends ClassMapperBase<RegisterState> {
  RegisterStateMapper._();

  static RegisterStateMapper? _instance;
  static RegisterStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegisterStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RegisterState';

  static String? _$name(RegisterState v) => v.name;
  static const Field<RegisterState, String> _f$name =
      Field('name', _$name, opt: true);
  static String? _$email(RegisterState v) => v.email;
  static const Field<RegisterState, String> _f$email =
      Field('email', _$email, opt: true);
  static String? _$password(RegisterState v) => v.password;
  static const Field<RegisterState, String> _f$password =
      Field('password', _$password, opt: true);
  static bool _$isRegisterButtonEnabled(RegisterState v) =>
      v.isRegisterButtonEnabled;
  static const Field<RegisterState, bool> _f$isRegisterButtonEnabled = Field(
      'isRegisterButtonEnabled', _$isRegisterButtonEnabled,
      opt: true, def: false);

  @override
  final MappableFields<RegisterState> fields = const {
    #name: _f$name,
    #email: _f$email,
    #password: _f$password,
    #isRegisterButtonEnabled: _f$isRegisterButtonEnabled,
  };

  static RegisterState _instantiate(DecodingData data) {
    return RegisterState(
        name: data.dec(_f$name),
        email: data.dec(_f$email),
        password: data.dec(_f$password),
        isRegisterButtonEnabled: data.dec(_f$isRegisterButtonEnabled));
  }

  @override
  final Function instantiate = _instantiate;

  static RegisterState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RegisterState>(map);
  }

  static RegisterState fromJson(String json) {
    return ensureInitialized().decodeJson<RegisterState>(json);
  }
}

mixin RegisterStateMappable {
  String toJson() {
    return RegisterStateMapper.ensureInitialized()
        .encodeJson<RegisterState>(this as RegisterState);
  }

  Map<String, dynamic> toMap() {
    return RegisterStateMapper.ensureInitialized()
        .encodeMap<RegisterState>(this as RegisterState);
  }

  RegisterStateCopyWith<RegisterState, RegisterState, RegisterState>
      get copyWith => _RegisterStateCopyWithImpl<RegisterState, RegisterState>(
          this as RegisterState, $identity, $identity);
  @override
  String toString() {
    return RegisterStateMapper.ensureInitialized()
        .stringifyValue(this as RegisterState);
  }

  @override
  bool operator ==(Object other) {
    return RegisterStateMapper.ensureInitialized()
        .equalsValue(this as RegisterState, other);
  }

  @override
  int get hashCode {
    return RegisterStateMapper.ensureInitialized()
        .hashValue(this as RegisterState);
  }
}

extension RegisterStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RegisterState, $Out> {
  RegisterStateCopyWith<$R, RegisterState, $Out> get $asRegisterState =>
      $base.as((v, t, t2) => _RegisterStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RegisterStateCopyWith<$R, $In extends RegisterState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? name,
      String? email,
      String? password,
      bool? isRegisterButtonEnabled});
  RegisterStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RegisterStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RegisterState, $Out>
    implements RegisterStateCopyWith<$R, RegisterState, $Out> {
  _RegisterStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RegisterState> $mapper =
      RegisterStateMapper.ensureInitialized();
  @override
  $R call(
          {Object? name = $none,
          Object? email = $none,
          Object? password = $none,
          bool? isRegisterButtonEnabled}) =>
      $apply(FieldCopyWithData({
        if (name != $none) #name: name,
        if (email != $none) #email: email,
        if (password != $none) #password: password,
        if (isRegisterButtonEnabled != null)
          #isRegisterButtonEnabled: isRegisterButtonEnabled
      }));
  @override
  RegisterState $make(CopyWithData data) => RegisterState(
      name: data.get(#name, or: $value.name),
      email: data.get(#email, or: $value.email),
      password: data.get(#password, or: $value.password),
      isRegisterButtonEnabled: data.get(#isRegisterButtonEnabled,
          or: $value.isRegisterButtonEnabled));

  @override
  RegisterStateCopyWith<$R2, RegisterState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RegisterStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
