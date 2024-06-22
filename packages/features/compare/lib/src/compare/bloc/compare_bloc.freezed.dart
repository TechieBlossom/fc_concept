// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'compare_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CompareEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player) initial,
    required TResult Function(int index) selectPlayer,
    required TResult Function(
            int index, int playerId, int versionId, String version)
        selectVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Player player)? initial,
    TResult? Function(int index)? selectPlayer,
    TResult? Function(int index, int playerId, int versionId, String version)?
        selectVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player player)? initial,
    TResult Function(int index)? selectPlayer,
    TResult Function(int index, int playerId, int versionId, String version)?
        selectVersion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectPlayer value) selectPlayer,
    required TResult Function(_SelectVersion value) selectVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectPlayer value)? selectPlayer,
    TResult? Function(_SelectVersion value)? selectVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectPlayer value)? selectPlayer,
    TResult Function(_SelectVersion value)? selectVersion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompareEventCopyWith<$Res> {
  factory $CompareEventCopyWith(
          CompareEvent value, $Res Function(CompareEvent) then) =
      _$CompareEventCopyWithImpl<$Res, CompareEvent>;
}

/// @nodoc
class _$CompareEventCopyWithImpl<$Res, $Val extends CompareEvent>
    implements $CompareEventCopyWith<$Res> {
  _$CompareEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Player player});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CompareEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
  }) {
    return _then(_$InitialImpl(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl({required this.player});

  @override
  final Player player;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompareEvent.initial(player: $player)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompareEvent.initial'))
      ..add(DiagnosticsProperty('player', player));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.player, player) || other.player == player));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player) initial,
    required TResult Function(int index) selectPlayer,
    required TResult Function(
            int index, int playerId, int versionId, String version)
        selectVersion,
  }) {
    return initial(player);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Player player)? initial,
    TResult? Function(int index)? selectPlayer,
    TResult? Function(int index, int playerId, int versionId, String version)?
        selectVersion,
  }) {
    return initial?.call(player);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player player)? initial,
    TResult Function(int index)? selectPlayer,
    TResult Function(int index, int playerId, int versionId, String version)?
        selectVersion,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectPlayer value) selectPlayer,
    required TResult Function(_SelectVersion value) selectVersion,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectPlayer value)? selectPlayer,
    TResult? Function(_SelectVersion value)? selectVersion,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectPlayer value)? selectPlayer,
    TResult Function(_SelectVersion value)? selectVersion,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CompareEvent {
  const factory _Initial({required final Player player}) = _$InitialImpl;

  Player get player;
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectPlayerImplCopyWith<$Res> {
  factory _$$SelectPlayerImplCopyWith(
          _$SelectPlayerImpl value, $Res Function(_$SelectPlayerImpl) then) =
      __$$SelectPlayerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SelectPlayerImplCopyWithImpl<$Res>
    extends _$CompareEventCopyWithImpl<$Res, _$SelectPlayerImpl>
    implements _$$SelectPlayerImplCopyWith<$Res> {
  __$$SelectPlayerImplCopyWithImpl(
      _$SelectPlayerImpl _value, $Res Function(_$SelectPlayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SelectPlayerImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectPlayerImpl with DiagnosticableTreeMixin implements _SelectPlayer {
  const _$SelectPlayerImpl({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompareEvent.selectPlayer(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompareEvent.selectPlayer'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectPlayerImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectPlayerImplCopyWith<_$SelectPlayerImpl> get copyWith =>
      __$$SelectPlayerImplCopyWithImpl<_$SelectPlayerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player) initial,
    required TResult Function(int index) selectPlayer,
    required TResult Function(
            int index, int playerId, int versionId, String version)
        selectVersion,
  }) {
    return selectPlayer(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Player player)? initial,
    TResult? Function(int index)? selectPlayer,
    TResult? Function(int index, int playerId, int versionId, String version)?
        selectVersion,
  }) {
    return selectPlayer?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player player)? initial,
    TResult Function(int index)? selectPlayer,
    TResult Function(int index, int playerId, int versionId, String version)?
        selectVersion,
    required TResult orElse(),
  }) {
    if (selectPlayer != null) {
      return selectPlayer(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectPlayer value) selectPlayer,
    required TResult Function(_SelectVersion value) selectVersion,
  }) {
    return selectPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectPlayer value)? selectPlayer,
    TResult? Function(_SelectVersion value)? selectVersion,
  }) {
    return selectPlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectPlayer value)? selectPlayer,
    TResult Function(_SelectVersion value)? selectVersion,
    required TResult orElse(),
  }) {
    if (selectPlayer != null) {
      return selectPlayer(this);
    }
    return orElse();
  }
}

abstract class _SelectPlayer implements CompareEvent {
  const factory _SelectPlayer({required final int index}) = _$SelectPlayerImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$SelectPlayerImplCopyWith<_$SelectPlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectVersionImplCopyWith<$Res> {
  factory _$$SelectVersionImplCopyWith(
          _$SelectVersionImpl value, $Res Function(_$SelectVersionImpl) then) =
      __$$SelectVersionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, int playerId, int versionId, String version});
}

/// @nodoc
class __$$SelectVersionImplCopyWithImpl<$Res>
    extends _$CompareEventCopyWithImpl<$Res, _$SelectVersionImpl>
    implements _$$SelectVersionImplCopyWith<$Res> {
  __$$SelectVersionImplCopyWithImpl(
      _$SelectVersionImpl _value, $Res Function(_$SelectVersionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? playerId = null,
    Object? versionId = null,
    Object? version = null,
  }) {
    return _then(_$SelectVersionImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      playerId: null == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as int,
      versionId: null == versionId
          ? _value.versionId
          : versionId // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectVersionImpl
    with DiagnosticableTreeMixin
    implements _SelectVersion {
  const _$SelectVersionImpl(
      {required this.index,
      required this.playerId,
      required this.versionId,
      required this.version});

  @override
  final int index;
  @override
  final int playerId;
  @override
  final int versionId;
  @override
  final String version;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompareEvent.selectVersion(index: $index, playerId: $playerId, versionId: $versionId, version: $version)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompareEvent.selectVersion'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('playerId', playerId))
      ..add(DiagnosticsProperty('versionId', versionId))
      ..add(DiagnosticsProperty('version', version));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectVersionImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.playerId, playerId) ||
                other.playerId == playerId) &&
            (identical(other.versionId, versionId) ||
                other.versionId == versionId) &&
            (identical(other.version, version) || other.version == version));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, index, playerId, versionId, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectVersionImplCopyWith<_$SelectVersionImpl> get copyWith =>
      __$$SelectVersionImplCopyWithImpl<_$SelectVersionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player) initial,
    required TResult Function(int index) selectPlayer,
    required TResult Function(
            int index, int playerId, int versionId, String version)
        selectVersion,
  }) {
    return selectVersion(index, playerId, versionId, version);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Player player)? initial,
    TResult? Function(int index)? selectPlayer,
    TResult? Function(int index, int playerId, int versionId, String version)?
        selectVersion,
  }) {
    return selectVersion?.call(index, playerId, versionId, version);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player player)? initial,
    TResult Function(int index)? selectPlayer,
    TResult Function(int index, int playerId, int versionId, String version)?
        selectVersion,
    required TResult orElse(),
  }) {
    if (selectVersion != null) {
      return selectVersion(index, playerId, versionId, version);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectPlayer value) selectPlayer,
    required TResult Function(_SelectVersion value) selectVersion,
  }) {
    return selectVersion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectPlayer value)? selectPlayer,
    TResult? Function(_SelectVersion value)? selectVersion,
  }) {
    return selectVersion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectPlayer value)? selectPlayer,
    TResult Function(_SelectVersion value)? selectVersion,
    required TResult orElse(),
  }) {
    if (selectVersion != null) {
      return selectVersion(this);
    }
    return orElse();
  }
}

abstract class _SelectVersion implements CompareEvent {
  const factory _SelectVersion(
      {required final int index,
      required final int playerId,
      required final int versionId,
      required final String version}) = _$SelectVersionImpl;

  int get index;
  int get playerId;
  int get versionId;
  String get version;
  @JsonKey(ignore: true)
  _$$SelectVersionImplCopyWith<_$SelectVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CompareState {
  Player? get player1 => throw _privateConstructorUsedError;
  Player? get player2 => throw _privateConstructorUsedError;
  List<(int, int, String)>? get player1Versions =>
      throw _privateConstructorUsedError;
  (int, String)? get selectedPlayer1Version =>
      throw _privateConstructorUsedError;
  List<(int, int, String)>? get player2Versions =>
      throw _privateConstructorUsedError;
  (int, String)? get selectedPlayer2Version =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompareStateCopyWith<CompareState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompareStateCopyWith<$Res> {
  factory $CompareStateCopyWith(
          CompareState value, $Res Function(CompareState) then) =
      _$CompareStateCopyWithImpl<$Res, CompareState>;
  @useResult
  $Res call(
      {Player? player1,
      Player? player2,
      List<(int, int, String)>? player1Versions,
      (int, String)? selectedPlayer1Version,
      List<(int, int, String)>? player2Versions,
      (int, String)? selectedPlayer2Version});
}

/// @nodoc
class _$CompareStateCopyWithImpl<$Res, $Val extends CompareState>
    implements $CompareStateCopyWith<$Res> {
  _$CompareStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player1 = freezed,
    Object? player2 = freezed,
    Object? player1Versions = freezed,
    Object? selectedPlayer1Version = freezed,
    Object? player2Versions = freezed,
    Object? selectedPlayer2Version = freezed,
  }) {
    return _then(_value.copyWith(
      player1: freezed == player1
          ? _value.player1
          : player1 // ignore: cast_nullable_to_non_nullable
              as Player?,
      player2: freezed == player2
          ? _value.player2
          : player2 // ignore: cast_nullable_to_non_nullable
              as Player?,
      player1Versions: freezed == player1Versions
          ? _value.player1Versions
          : player1Versions // ignore: cast_nullable_to_non_nullable
              as List<(int, int, String)>?,
      selectedPlayer1Version: freezed == selectedPlayer1Version
          ? _value.selectedPlayer1Version
          : selectedPlayer1Version // ignore: cast_nullable_to_non_nullable
              as (int, String)?,
      player2Versions: freezed == player2Versions
          ? _value.player2Versions
          : player2Versions // ignore: cast_nullable_to_non_nullable
              as List<(int, int, String)>?,
      selectedPlayer2Version: freezed == selectedPlayer2Version
          ? _value.selectedPlayer2Version
          : selectedPlayer2Version // ignore: cast_nullable_to_non_nullable
              as (int, String)?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompareStateImplCopyWith<$Res>
    implements $CompareStateCopyWith<$Res> {
  factory _$$CompareStateImplCopyWith(
          _$CompareStateImpl value, $Res Function(_$CompareStateImpl) then) =
      __$$CompareStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Player? player1,
      Player? player2,
      List<(int, int, String)>? player1Versions,
      (int, String)? selectedPlayer1Version,
      List<(int, int, String)>? player2Versions,
      (int, String)? selectedPlayer2Version});
}

/// @nodoc
class __$$CompareStateImplCopyWithImpl<$Res>
    extends _$CompareStateCopyWithImpl<$Res, _$CompareStateImpl>
    implements _$$CompareStateImplCopyWith<$Res> {
  __$$CompareStateImplCopyWithImpl(
      _$CompareStateImpl _value, $Res Function(_$CompareStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player1 = freezed,
    Object? player2 = freezed,
    Object? player1Versions = freezed,
    Object? selectedPlayer1Version = freezed,
    Object? player2Versions = freezed,
    Object? selectedPlayer2Version = freezed,
  }) {
    return _then(_$CompareStateImpl(
      player1: freezed == player1
          ? _value.player1
          : player1 // ignore: cast_nullable_to_non_nullable
              as Player?,
      player2: freezed == player2
          ? _value.player2
          : player2 // ignore: cast_nullable_to_non_nullable
              as Player?,
      player1Versions: freezed == player1Versions
          ? _value._player1Versions
          : player1Versions // ignore: cast_nullable_to_non_nullable
              as List<(int, int, String)>?,
      selectedPlayer1Version: freezed == selectedPlayer1Version
          ? _value.selectedPlayer1Version
          : selectedPlayer1Version // ignore: cast_nullable_to_non_nullable
              as (int, String)?,
      player2Versions: freezed == player2Versions
          ? _value._player2Versions
          : player2Versions // ignore: cast_nullable_to_non_nullable
              as List<(int, int, String)>?,
      selectedPlayer2Version: freezed == selectedPlayer2Version
          ? _value.selectedPlayer2Version
          : selectedPlayer2Version // ignore: cast_nullable_to_non_nullable
              as (int, String)?,
    ));
  }
}

/// @nodoc

class _$CompareStateImpl with DiagnosticableTreeMixin implements _CompareState {
  const _$CompareStateImpl(
      {this.player1,
      this.player2,
      final List<(int, int, String)>? player1Versions,
      this.selectedPlayer1Version,
      final List<(int, int, String)>? player2Versions,
      this.selectedPlayer2Version})
      : _player1Versions = player1Versions,
        _player2Versions = player2Versions;

  @override
  final Player? player1;
  @override
  final Player? player2;
  final List<(int, int, String)>? _player1Versions;
  @override
  List<(int, int, String)>? get player1Versions {
    final value = _player1Versions;
    if (value == null) return null;
    if (_player1Versions is EqualUnmodifiableListView) return _player1Versions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final (int, String)? selectedPlayer1Version;
  final List<(int, int, String)>? _player2Versions;
  @override
  List<(int, int, String)>? get player2Versions {
    final value = _player2Versions;
    if (value == null) return null;
    if (_player2Versions is EqualUnmodifiableListView) return _player2Versions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final (int, String)? selectedPlayer2Version;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompareState(player1: $player1, player2: $player2, player1Versions: $player1Versions, selectedPlayer1Version: $selectedPlayer1Version, player2Versions: $player2Versions, selectedPlayer2Version: $selectedPlayer2Version)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompareState'))
      ..add(DiagnosticsProperty('player1', player1))
      ..add(DiagnosticsProperty('player2', player2))
      ..add(DiagnosticsProperty('player1Versions', player1Versions))
      ..add(
          DiagnosticsProperty('selectedPlayer1Version', selectedPlayer1Version))
      ..add(DiagnosticsProperty('player2Versions', player2Versions))
      ..add(DiagnosticsProperty(
          'selectedPlayer2Version', selectedPlayer2Version));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompareStateImpl &&
            (identical(other.player1, player1) || other.player1 == player1) &&
            (identical(other.player2, player2) || other.player2 == player2) &&
            const DeepCollectionEquality()
                .equals(other._player1Versions, _player1Versions) &&
            (identical(other.selectedPlayer1Version, selectedPlayer1Version) ||
                other.selectedPlayer1Version == selectedPlayer1Version) &&
            const DeepCollectionEquality()
                .equals(other._player2Versions, _player2Versions) &&
            (identical(other.selectedPlayer2Version, selectedPlayer2Version) ||
                other.selectedPlayer2Version == selectedPlayer2Version));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      player1,
      player2,
      const DeepCollectionEquality().hash(_player1Versions),
      selectedPlayer1Version,
      const DeepCollectionEquality().hash(_player2Versions),
      selectedPlayer2Version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompareStateImplCopyWith<_$CompareStateImpl> get copyWith =>
      __$$CompareStateImplCopyWithImpl<_$CompareStateImpl>(this, _$identity);
}

abstract class _CompareState implements CompareState {
  const factory _CompareState(
      {final Player? player1,
      final Player? player2,
      final List<(int, int, String)>? player1Versions,
      final (int, String)? selectedPlayer1Version,
      final List<(int, int, String)>? player2Versions,
      final (int, String)? selectedPlayer2Version}) = _$CompareStateImpl;

  @override
  Player? get player1;
  @override
  Player? get player2;
  @override
  List<(int, int, String)>? get player1Versions;
  @override
  (int, String)? get selectedPlayer1Version;
  @override
  List<(int, int, String)>? get player2Versions;
  @override
  (int, String)? get selectedPlayer2Version;
  @override
  @JsonKey(ignore: true)
  _$$CompareStateImplCopyWith<_$CompareStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
