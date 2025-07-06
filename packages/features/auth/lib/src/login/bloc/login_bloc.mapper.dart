// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'login_bloc.dart';

class LoginEventMapper extends ClassMapperBase<LoginEvent> {
  LoginEventMapper._();

  static LoginEventMapper? _instance;
  static LoginEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoginEventMapper._());
      CreateAccountTapMapper.ensureInitialized();
      SignInTapMapper.ensureInitialized();
      EmailUpdateMapper.ensureInitialized();
      PasswordUpdateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LoginEvent';

  @override
  final MappableFields<LoginEvent> fields = const {};

  static LoginEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'LoginEvent', 'loginEvent', '${data.value['loginEvent']}');
  }

  @override
  final Function instantiate = _instantiate;

  static LoginEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoginEvent>(map);
  }

  static LoginEvent fromJson(String json) {
    return ensureInitialized().decodeJson<LoginEvent>(json);
  }
}

mixin LoginEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  LoginEventCopyWith<LoginEvent, LoginEvent, LoginEvent> get copyWith;
}

abstract class LoginEventCopyWith<$R, $In extends LoginEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  LoginEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class CreateAccountTapMapper extends SubClassMapperBase<CreateAccountTap> {
  CreateAccountTapMapper._();

  static CreateAccountTapMapper? _instance;
  static CreateAccountTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreateAccountTapMapper._());
      LoginEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'CreateAccountTap';

  @override
  final MappableFields<CreateAccountTap> fields = const {};

  @override
  final String discriminatorKey = 'loginEvent';
  @override
  final dynamic discriminatorValue = 'createAccountTap';
  @override
  late final ClassMapperBase superMapper = LoginEventMapper.ensureInitialized();

  static CreateAccountTap _instantiate(DecodingData data) {
    return CreateAccountTap();
  }

  @override
  final Function instantiate = _instantiate;

  static CreateAccountTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreateAccountTap>(map);
  }

  static CreateAccountTap fromJson(String json) {
    return ensureInitialized().decodeJson<CreateAccountTap>(json);
  }
}

mixin CreateAccountTapMappable {
  String toJson() {
    return CreateAccountTapMapper.ensureInitialized()
        .encodeJson<CreateAccountTap>(this as CreateAccountTap);
  }

  Map<String, dynamic> toMap() {
    return CreateAccountTapMapper.ensureInitialized()
        .encodeMap<CreateAccountTap>(this as CreateAccountTap);
  }

  CreateAccountTapCopyWith<CreateAccountTap, CreateAccountTap, CreateAccountTap>
      get copyWith =>
          _CreateAccountTapCopyWithImpl<CreateAccountTap, CreateAccountTap>(
              this as CreateAccountTap, $identity, $identity);
  @override
  String toString() {
    return CreateAccountTapMapper.ensureInitialized()
        .stringifyValue(this as CreateAccountTap);
  }

  @override
  bool operator ==(Object other) {
    return CreateAccountTapMapper.ensureInitialized()
        .equalsValue(this as CreateAccountTap, other);
  }

  @override
  int get hashCode {
    return CreateAccountTapMapper.ensureInitialized()
        .hashValue(this as CreateAccountTap);
  }
}

extension CreateAccountTapValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreateAccountTap, $Out> {
  CreateAccountTapCopyWith<$R, CreateAccountTap, $Out>
      get $asCreateAccountTap => $base
          .as((v, t, t2) => _CreateAccountTapCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CreateAccountTapCopyWith<$R, $In extends CreateAccountTap, $Out>
    implements LoginEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  CreateAccountTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreateAccountTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreateAccountTap, $Out>
    implements CreateAccountTapCopyWith<$R, CreateAccountTap, $Out> {
  _CreateAccountTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreateAccountTap> $mapper =
      CreateAccountTapMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  CreateAccountTap $make(CopyWithData data) => CreateAccountTap();

  @override
  CreateAccountTapCopyWith<$R2, CreateAccountTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CreateAccountTapCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SignInTapMapper extends SubClassMapperBase<SignInTap> {
  SignInTapMapper._();

  static SignInTapMapper? _instance;
  static SignInTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SignInTapMapper._());
      LoginEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'SignInTap';

  @override
  final MappableFields<SignInTap> fields = const {};

  @override
  final String discriminatorKey = 'loginEvent';
  @override
  final dynamic discriminatorValue = 'signInTap';
  @override
  late final ClassMapperBase superMapper = LoginEventMapper.ensureInitialized();

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
      _SignInTapCopyWithImpl<SignInTap, SignInTap>(
          this as SignInTap, $identity, $identity);
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
      $base.as((v, t, t2) => _SignInTapCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SignInTapCopyWith<$R, $In extends SignInTap, $Out>
    implements LoginEventCopyWith<$R, $In, $Out> {
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
      _SignInTapCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class EmailUpdateMapper extends SubClassMapperBase<EmailUpdate> {
  EmailUpdateMapper._();

  static EmailUpdateMapper? _instance;
  static EmailUpdateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EmailUpdateMapper._());
      LoginEventMapper.ensureInitialized().addSubMapper(_instance!);
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
  final String discriminatorKey = 'loginEvent';
  @override
  final dynamic discriminatorValue = 'emailUpdate';
  @override
  late final ClassMapperBase superMapper = LoginEventMapper.ensureInitialized();

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
    implements LoginEventCopyWith<$R, $In, $Out> {
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
      LoginEventMapper.ensureInitialized().addSubMapper(_instance!);
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
  final String discriminatorKey = 'loginEvent';
  @override
  final dynamic discriminatorValue = 'passwordUpdate';
  @override
  late final ClassMapperBase superMapper = LoginEventMapper.ensureInitialized();

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
    implements LoginEventCopyWith<$R, $In, $Out> {
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

class LoginStateMapper extends ClassMapperBase<LoginState> {
  LoginStateMapper._();

  static LoginStateMapper? _instance;
  static LoginStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoginStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LoginState';

  static String? _$email(LoginState v) => v.email;
  static const Field<LoginState, String> _f$email =
      Field('email', _$email, opt: true, def: 'sharma.prateek1712@gmail.com');
  static String? _$password(LoginState v) => v.password;
  static const Field<LoginState, String> _f$password =
      Field('password', _$password, opt: true, def: 'Ganesha1712!@#');
  static bool _$isSignButtonEnabled(LoginState v) => v.isSignButtonEnabled;
  static const Field<LoginState, bool> _f$isSignButtonEnabled =
      Field('isSignButtonEnabled', _$isSignButtonEnabled, opt: true, def: true);

  @override
  final MappableFields<LoginState> fields = const {
    #email: _f$email,
    #password: _f$password,
    #isSignButtonEnabled: _f$isSignButtonEnabled,
  };

  static LoginState _instantiate(DecodingData data) {
    return LoginState(
        email: data.dec(_f$email),
        password: data.dec(_f$password),
        isSignButtonEnabled: data.dec(_f$isSignButtonEnabled));
  }

  @override
  final Function instantiate = _instantiate;

  static LoginState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoginState>(map);
  }

  static LoginState fromJson(String json) {
    return ensureInitialized().decodeJson<LoginState>(json);
  }
}

mixin LoginStateMappable {
  String toJson() {
    return LoginStateMapper.ensureInitialized()
        .encodeJson<LoginState>(this as LoginState);
  }

  Map<String, dynamic> toMap() {
    return LoginStateMapper.ensureInitialized()
        .encodeMap<LoginState>(this as LoginState);
  }

  LoginStateCopyWith<LoginState, LoginState, LoginState> get copyWith =>
      _LoginStateCopyWithImpl<LoginState, LoginState>(
          this as LoginState, $identity, $identity);
  @override
  String toString() {
    return LoginStateMapper.ensureInitialized()
        .stringifyValue(this as LoginState);
  }

  @override
  bool operator ==(Object other) {
    return LoginStateMapper.ensureInitialized()
        .equalsValue(this as LoginState, other);
  }

  @override
  int get hashCode {
    return LoginStateMapper.ensureInitialized().hashValue(this as LoginState);
  }
}

extension LoginStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoginState, $Out> {
  LoginStateCopyWith<$R, LoginState, $Out> get $asLoginState =>
      $base.as((v, t, t2) => _LoginStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LoginStateCopyWith<$R, $In extends LoginState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email, String? password, bool? isSignButtonEnabled});
  LoginStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LoginStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoginState, $Out>
    implements LoginStateCopyWith<$R, LoginState, $Out> {
  _LoginStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoginState> $mapper =
      LoginStateMapper.ensureInitialized();
  @override
  $R call(
          {Object? email = $none,
          Object? password = $none,
          bool? isSignButtonEnabled}) =>
      $apply(FieldCopyWithData({
        if (email != $none) #email: email,
        if (password != $none) #password: password,
        if (isSignButtonEnabled != null)
          #isSignButtonEnabled: isSignButtonEnabled
      }));
  @override
  LoginState $make(CopyWithData data) => LoginState(
      email: data.get(#email, or: $value.email),
      password: data.get(#password, or: $value.password),
      isSignButtonEnabled:
          data.get(#isSignButtonEnabled, or: $value.isSignButtonEnabled));

  @override
  LoginStateCopyWith<$R2, LoginState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LoginStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
