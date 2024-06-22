// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayerDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player) initial,
    required TResult Function(int playerId, int versionId) versionTap,
    required TResult Function() compareTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Player player)? initial,
    TResult? Function(int playerId, int versionId)? versionTap,
    TResult? Function()? compareTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player player)? initial,
    TResult Function(int playerId, int versionId)? versionTap,
    TResult Function()? compareTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPlayerDetailEvent value) initial,
    required TResult Function(_VersionTapPlayerDetailEvent value) versionTap,
    required TResult Function(_CompareTapPlayerDetailEvent value) compareTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPlayerDetailEvent value)? initial,
    TResult? Function(_VersionTapPlayerDetailEvent value)? versionTap,
    TResult? Function(_CompareTapPlayerDetailEvent value)? compareTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPlayerDetailEvent value)? initial,
    TResult Function(_VersionTapPlayerDetailEvent value)? versionTap,
    TResult Function(_CompareTapPlayerDetailEvent value)? compareTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerDetailEventCopyWith<$Res> {
  factory $PlayerDetailEventCopyWith(
          PlayerDetailEvent value, $Res Function(PlayerDetailEvent) then) =
      _$PlayerDetailEventCopyWithImpl<$Res, PlayerDetailEvent>;
}

/// @nodoc
class _$PlayerDetailEventCopyWithImpl<$Res, $Val extends PlayerDetailEvent>
    implements $PlayerDetailEventCopyWith<$Res> {
  _$PlayerDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialPlayerDetailEventImplCopyWith<$Res> {
  factory _$$InitialPlayerDetailEventImplCopyWith(
          _$InitialPlayerDetailEventImpl value,
          $Res Function(_$InitialPlayerDetailEventImpl) then) =
      __$$InitialPlayerDetailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Player player});
}

/// @nodoc
class __$$InitialPlayerDetailEventImplCopyWithImpl<$Res>
    extends _$PlayerDetailEventCopyWithImpl<$Res,
        _$InitialPlayerDetailEventImpl>
    implements _$$InitialPlayerDetailEventImplCopyWith<$Res> {
  __$$InitialPlayerDetailEventImplCopyWithImpl(
      _$InitialPlayerDetailEventImpl _value,
      $Res Function(_$InitialPlayerDetailEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
  }) {
    return _then(_$InitialPlayerDetailEventImpl(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
    ));
  }
}

/// @nodoc

class _$InitialPlayerDetailEventImpl
    with DiagnosticableTreeMixin
    implements _InitialPlayerDetailEvent {
  const _$InitialPlayerDetailEventImpl({required this.player});

  @override
  final Player player;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerDetailEvent.initial(player: $player)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerDetailEvent.initial'))
      ..add(DiagnosticsProperty('player', player));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialPlayerDetailEventImpl &&
            (identical(other.player, player) || other.player == player));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialPlayerDetailEventImplCopyWith<_$InitialPlayerDetailEventImpl>
      get copyWith => __$$InitialPlayerDetailEventImplCopyWithImpl<
          _$InitialPlayerDetailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player) initial,
    required TResult Function(int playerId, int versionId) versionTap,
    required TResult Function() compareTap,
  }) {
    return initial(player);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Player player)? initial,
    TResult? Function(int playerId, int versionId)? versionTap,
    TResult? Function()? compareTap,
  }) {
    return initial?.call(player);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player player)? initial,
    TResult Function(int playerId, int versionId)? versionTap,
    TResult Function()? compareTap,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(player);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPlayerDetailEvent value) initial,
    required TResult Function(_VersionTapPlayerDetailEvent value) versionTap,
    required TResult Function(_CompareTapPlayerDetailEvent value) compareTap,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPlayerDetailEvent value)? initial,
    TResult? Function(_VersionTapPlayerDetailEvent value)? versionTap,
    TResult? Function(_CompareTapPlayerDetailEvent value)? compareTap,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPlayerDetailEvent value)? initial,
    TResult Function(_VersionTapPlayerDetailEvent value)? versionTap,
    TResult Function(_CompareTapPlayerDetailEvent value)? compareTap,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialPlayerDetailEvent implements PlayerDetailEvent {
  const factory _InitialPlayerDetailEvent({required final Player player}) =
      _$InitialPlayerDetailEventImpl;

  Player get player;
  @JsonKey(ignore: true)
  _$$InitialPlayerDetailEventImplCopyWith<_$InitialPlayerDetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VersionTapPlayerDetailEventImplCopyWith<$Res> {
  factory _$$VersionTapPlayerDetailEventImplCopyWith(
          _$VersionTapPlayerDetailEventImpl value,
          $Res Function(_$VersionTapPlayerDetailEventImpl) then) =
      __$$VersionTapPlayerDetailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int playerId, int versionId});
}

/// @nodoc
class __$$VersionTapPlayerDetailEventImplCopyWithImpl<$Res>
    extends _$PlayerDetailEventCopyWithImpl<$Res,
        _$VersionTapPlayerDetailEventImpl>
    implements _$$VersionTapPlayerDetailEventImplCopyWith<$Res> {
  __$$VersionTapPlayerDetailEventImplCopyWithImpl(
      _$VersionTapPlayerDetailEventImpl _value,
      $Res Function(_$VersionTapPlayerDetailEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerId = null,
    Object? versionId = null,
  }) {
    return _then(_$VersionTapPlayerDetailEventImpl(
      playerId: null == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as int,
      versionId: null == versionId
          ? _value.versionId
          : versionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$VersionTapPlayerDetailEventImpl
    with DiagnosticableTreeMixin
    implements _VersionTapPlayerDetailEvent {
  const _$VersionTapPlayerDetailEventImpl(
      {required this.playerId, required this.versionId});

  @override
  final int playerId;
  @override
  final int versionId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerDetailEvent.versionTap(playerId: $playerId, versionId: $versionId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerDetailEvent.versionTap'))
      ..add(DiagnosticsProperty('playerId', playerId))
      ..add(DiagnosticsProperty('versionId', versionId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersionTapPlayerDetailEventImpl &&
            (identical(other.playerId, playerId) ||
                other.playerId == playerId) &&
            (identical(other.versionId, versionId) ||
                other.versionId == versionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playerId, versionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VersionTapPlayerDetailEventImplCopyWith<_$VersionTapPlayerDetailEventImpl>
      get copyWith => __$$VersionTapPlayerDetailEventImplCopyWithImpl<
          _$VersionTapPlayerDetailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player) initial,
    required TResult Function(int playerId, int versionId) versionTap,
    required TResult Function() compareTap,
  }) {
    return versionTap(playerId, versionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Player player)? initial,
    TResult? Function(int playerId, int versionId)? versionTap,
    TResult? Function()? compareTap,
  }) {
    return versionTap?.call(playerId, versionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player player)? initial,
    TResult Function(int playerId, int versionId)? versionTap,
    TResult Function()? compareTap,
    required TResult orElse(),
  }) {
    if (versionTap != null) {
      return versionTap(playerId, versionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPlayerDetailEvent value) initial,
    required TResult Function(_VersionTapPlayerDetailEvent value) versionTap,
    required TResult Function(_CompareTapPlayerDetailEvent value) compareTap,
  }) {
    return versionTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPlayerDetailEvent value)? initial,
    TResult? Function(_VersionTapPlayerDetailEvent value)? versionTap,
    TResult? Function(_CompareTapPlayerDetailEvent value)? compareTap,
  }) {
    return versionTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPlayerDetailEvent value)? initial,
    TResult Function(_VersionTapPlayerDetailEvent value)? versionTap,
    TResult Function(_CompareTapPlayerDetailEvent value)? compareTap,
    required TResult orElse(),
  }) {
    if (versionTap != null) {
      return versionTap(this);
    }
    return orElse();
  }
}

abstract class _VersionTapPlayerDetailEvent implements PlayerDetailEvent {
  const factory _VersionTapPlayerDetailEvent(
      {required final int playerId,
      required final int versionId}) = _$VersionTapPlayerDetailEventImpl;

  int get playerId;
  int get versionId;
  @JsonKey(ignore: true)
  _$$VersionTapPlayerDetailEventImplCopyWith<_$VersionTapPlayerDetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompareTapPlayerDetailEventImplCopyWith<$Res> {
  factory _$$CompareTapPlayerDetailEventImplCopyWith(
          _$CompareTapPlayerDetailEventImpl value,
          $Res Function(_$CompareTapPlayerDetailEventImpl) then) =
      __$$CompareTapPlayerDetailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompareTapPlayerDetailEventImplCopyWithImpl<$Res>
    extends _$PlayerDetailEventCopyWithImpl<$Res,
        _$CompareTapPlayerDetailEventImpl>
    implements _$$CompareTapPlayerDetailEventImplCopyWith<$Res> {
  __$$CompareTapPlayerDetailEventImplCopyWithImpl(
      _$CompareTapPlayerDetailEventImpl _value,
      $Res Function(_$CompareTapPlayerDetailEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompareTapPlayerDetailEventImpl
    with DiagnosticableTreeMixin
    implements _CompareTapPlayerDetailEvent {
  const _$CompareTapPlayerDetailEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerDetailEvent.compareTap()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PlayerDetailEvent.compareTap'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompareTapPlayerDetailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player) initial,
    required TResult Function(int playerId, int versionId) versionTap,
    required TResult Function() compareTap,
  }) {
    return compareTap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Player player)? initial,
    TResult? Function(int playerId, int versionId)? versionTap,
    TResult? Function()? compareTap,
  }) {
    return compareTap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player player)? initial,
    TResult Function(int playerId, int versionId)? versionTap,
    TResult Function()? compareTap,
    required TResult orElse(),
  }) {
    if (compareTap != null) {
      return compareTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPlayerDetailEvent value) initial,
    required TResult Function(_VersionTapPlayerDetailEvent value) versionTap,
    required TResult Function(_CompareTapPlayerDetailEvent value) compareTap,
  }) {
    return compareTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPlayerDetailEvent value)? initial,
    TResult? Function(_VersionTapPlayerDetailEvent value)? versionTap,
    TResult? Function(_CompareTapPlayerDetailEvent value)? compareTap,
  }) {
    return compareTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPlayerDetailEvent value)? initial,
    TResult Function(_VersionTapPlayerDetailEvent value)? versionTap,
    TResult Function(_CompareTapPlayerDetailEvent value)? compareTap,
    required TResult orElse(),
  }) {
    if (compareTap != null) {
      return compareTap(this);
    }
    return orElse();
  }
}

abstract class _CompareTapPlayerDetailEvent implements PlayerDetailEvent {
  const factory _CompareTapPlayerDetailEvent() =
      _$CompareTapPlayerDetailEventImpl;
}

/// @nodoc
mixin _$PlayerDetailState {
  Player get player => throw _privateConstructorUsedError;
  List<(int, int, String)>? get playerVersions =>
      throw _privateConstructorUsedError;
  int? get selectedVersion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerDetailStateCopyWith<PlayerDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerDetailStateCopyWith<$Res> {
  factory $PlayerDetailStateCopyWith(
          PlayerDetailState value, $Res Function(PlayerDetailState) then) =
      _$PlayerDetailStateCopyWithImpl<$Res, PlayerDetailState>;
  @useResult
  $Res call(
      {Player player,
      List<(int, int, String)>? playerVersions,
      int? selectedVersion});
}

/// @nodoc
class _$PlayerDetailStateCopyWithImpl<$Res, $Val extends PlayerDetailState>
    implements $PlayerDetailStateCopyWith<$Res> {
  _$PlayerDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? playerVersions = freezed,
    Object? selectedVersion = freezed,
  }) {
    return _then(_value.copyWith(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      playerVersions: freezed == playerVersions
          ? _value.playerVersions
          : playerVersions // ignore: cast_nullable_to_non_nullable
              as List<(int, int, String)>?,
      selectedVersion: freezed == selectedVersion
          ? _value.selectedVersion
          : selectedVersion // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerDetailStateImplCopyWith<$Res>
    implements $PlayerDetailStateCopyWith<$Res> {
  factory _$$PlayerDetailStateImplCopyWith(_$PlayerDetailStateImpl value,
          $Res Function(_$PlayerDetailStateImpl) then) =
      __$$PlayerDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Player player,
      List<(int, int, String)>? playerVersions,
      int? selectedVersion});
}

/// @nodoc
class __$$PlayerDetailStateImplCopyWithImpl<$Res>
    extends _$PlayerDetailStateCopyWithImpl<$Res, _$PlayerDetailStateImpl>
    implements _$$PlayerDetailStateImplCopyWith<$Res> {
  __$$PlayerDetailStateImplCopyWithImpl(_$PlayerDetailStateImpl _value,
      $Res Function(_$PlayerDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? playerVersions = freezed,
    Object? selectedVersion = freezed,
  }) {
    return _then(_$PlayerDetailStateImpl(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      playerVersions: freezed == playerVersions
          ? _value._playerVersions
          : playerVersions // ignore: cast_nullable_to_non_nullable
              as List<(int, int, String)>?,
      selectedVersion: freezed == selectedVersion
          ? _value.selectedVersion
          : selectedVersion // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$PlayerDetailStateImpl
    with DiagnosticableTreeMixin
    implements _PlayerDetailState {
  const _$PlayerDetailStateImpl(
      {required this.player,
      final List<(int, int, String)>? playerVersions,
      this.selectedVersion})
      : _playerVersions = playerVersions;

  @override
  final Player player;
  final List<(int, int, String)>? _playerVersions;
  @override
  List<(int, int, String)>? get playerVersions {
    final value = _playerVersions;
    if (value == null) return null;
    if (_playerVersions is EqualUnmodifiableListView) return _playerVersions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? selectedVersion;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerDetailState(player: $player, playerVersions: $playerVersions, selectedVersion: $selectedVersion)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerDetailState'))
      ..add(DiagnosticsProperty('player', player))
      ..add(DiagnosticsProperty('playerVersions', playerVersions))
      ..add(DiagnosticsProperty('selectedVersion', selectedVersion));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerDetailStateImpl &&
            (identical(other.player, player) || other.player == player) &&
            const DeepCollectionEquality()
                .equals(other._playerVersions, _playerVersions) &&
            (identical(other.selectedVersion, selectedVersion) ||
                other.selectedVersion == selectedVersion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player,
      const DeepCollectionEquality().hash(_playerVersions), selectedVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerDetailStateImplCopyWith<_$PlayerDetailStateImpl> get copyWith =>
      __$$PlayerDetailStateImplCopyWithImpl<_$PlayerDetailStateImpl>(
          this, _$identity);
}

abstract class _PlayerDetailState implements PlayerDetailState {
  const factory _PlayerDetailState(
      {required final Player player,
      final List<(int, int, String)>? playerVersions,
      final int? selectedVersion}) = _$PlayerDetailStateImpl;

  @override
  Player get player;
  @override
  List<(int, int, String)>? get playerVersions;
  @override
  int? get selectedVersion;
  @override
  @JsonKey(ignore: true)
  _$$PlayerDetailStateImplCopyWith<_$PlayerDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
