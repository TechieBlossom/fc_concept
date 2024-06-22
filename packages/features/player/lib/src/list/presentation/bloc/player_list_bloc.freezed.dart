// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayerListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String query) search,
    required TResult Function() nextPage,
    required TResult Function(Player player, bool resultWithSelection)
        playerTap,
    required TResult Function() filterTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String query)? search,
    TResult? Function()? nextPage,
    TResult? Function(Player player, bool resultWithSelection)? playerTap,
    TResult? Function()? filterTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String query)? search,
    TResult Function()? nextPage,
    TResult Function(Player player, bool resultWithSelection)? playerTap,
    TResult Function()? filterTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Search value) search,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_PlayerTap value) playerTap,
    required TResult Function(_FilterTap value) filterTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Search value)? search,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_PlayerTap value)? playerTap,
    TResult? Function(_FilterTap value)? filterTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Search value)? search,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_PlayerTap value)? playerTap,
    TResult Function(_FilterTap value)? filterTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerListEventCopyWith<$Res> {
  factory $PlayerListEventCopyWith(
          PlayerListEvent value, $Res Function(PlayerListEvent) then) =
      _$PlayerListEventCopyWithImpl<$Res, PlayerListEvent>;
}

/// @nodoc
class _$PlayerListEventCopyWithImpl<$Res, $Val extends PlayerListEvent>
    implements $PlayerListEventCopyWith<$Res> {
  _$PlayerListEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PlayerListEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerListEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PlayerListEvent.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String query) search,
    required TResult Function() nextPage,
    required TResult Function(Player player, bool resultWithSelection)
        playerTap,
    required TResult Function() filterTap,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String query)? search,
    TResult? Function()? nextPage,
    TResult? Function(Player player, bool resultWithSelection)? playerTap,
    TResult? Function()? filterTap,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String query)? search,
    TResult Function()? nextPage,
    TResult Function(Player player, bool resultWithSelection)? playerTap,
    TResult Function()? filterTap,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Search value) search,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_PlayerTap value) playerTap,
    required TResult Function(_FilterTap value) filterTap,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Search value)? search,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_PlayerTap value)? playerTap,
    TResult? Function(_FilterTap value)? filterTap,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Search value)? search,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_PlayerTap value)? playerTap,
    TResult Function(_FilterTap value)? filterTap,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PlayerListEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$PlayerListEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl with DiagnosticableTreeMixin implements _Search {
  const _$SearchImpl({this.query = ''});

  @override
  @JsonKey()
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerListEvent.search(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerListEvent.search'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String query) search,
    required TResult Function() nextPage,
    required TResult Function(Player player, bool resultWithSelection)
        playerTap,
    required TResult Function() filterTap,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String query)? search,
    TResult? Function()? nextPage,
    TResult? Function(Player player, bool resultWithSelection)? playerTap,
    TResult? Function()? filterTap,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String query)? search,
    TResult Function()? nextPage,
    TResult Function(Player player, bool resultWithSelection)? playerTap,
    TResult Function()? filterTap,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Search value) search,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_PlayerTap value) playerTap,
    required TResult Function(_FilterTap value) filterTap,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Search value)? search,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_PlayerTap value)? playerTap,
    TResult? Function(_FilterTap value)? filterTap,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Search value)? search,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_PlayerTap value)? playerTap,
    TResult Function(_FilterTap value)? filterTap,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements PlayerListEvent {
  const factory _Search({final String query}) = _$SearchImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextPageImplCopyWith<$Res> {
  factory _$$NextPageImplCopyWith(
          _$NextPageImpl value, $Res Function(_$NextPageImpl) then) =
      __$$NextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPageImplCopyWithImpl<$Res>
    extends _$PlayerListEventCopyWithImpl<$Res, _$NextPageImpl>
    implements _$$NextPageImplCopyWith<$Res> {
  __$$NextPageImplCopyWithImpl(
      _$NextPageImpl _value, $Res Function(_$NextPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextPageImpl with DiagnosticableTreeMixin implements _NextPage {
  const _$NextPageImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerListEvent.nextPage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PlayerListEvent.nextPage'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String query) search,
    required TResult Function() nextPage,
    required TResult Function(Player player, bool resultWithSelection)
        playerTap,
    required TResult Function() filterTap,
  }) {
    return nextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String query)? search,
    TResult? Function()? nextPage,
    TResult? Function(Player player, bool resultWithSelection)? playerTap,
    TResult? Function()? filterTap,
  }) {
    return nextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String query)? search,
    TResult Function()? nextPage,
    TResult Function(Player player, bool resultWithSelection)? playerTap,
    TResult Function()? filterTap,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Search value) search,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_PlayerTap value) playerTap,
    required TResult Function(_FilterTap value) filterTap,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Search value)? search,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_PlayerTap value)? playerTap,
    TResult? Function(_FilterTap value)? filterTap,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Search value)? search,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_PlayerTap value)? playerTap,
    TResult Function(_FilterTap value)? filterTap,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class _NextPage implements PlayerListEvent {
  const factory _NextPage() = _$NextPageImpl;
}

/// @nodoc
abstract class _$$PlayerTapImplCopyWith<$Res> {
  factory _$$PlayerTapImplCopyWith(
          _$PlayerTapImpl value, $Res Function(_$PlayerTapImpl) then) =
      __$$PlayerTapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Player player, bool resultWithSelection});
}

/// @nodoc
class __$$PlayerTapImplCopyWithImpl<$Res>
    extends _$PlayerListEventCopyWithImpl<$Res, _$PlayerTapImpl>
    implements _$$PlayerTapImplCopyWith<$Res> {
  __$$PlayerTapImplCopyWithImpl(
      _$PlayerTapImpl _value, $Res Function(_$PlayerTapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? resultWithSelection = null,
  }) {
    return _then(_$PlayerTapImpl(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      resultWithSelection: null == resultWithSelection
          ? _value.resultWithSelection
          : resultWithSelection // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PlayerTapImpl with DiagnosticableTreeMixin implements _PlayerTap {
  const _$PlayerTapImpl(
      {required this.player, required this.resultWithSelection});

  @override
  final Player player;
  @override
  final bool resultWithSelection;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerListEvent.playerTap(player: $player, resultWithSelection: $resultWithSelection)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerListEvent.playerTap'))
      ..add(DiagnosticsProperty('player', player))
      ..add(DiagnosticsProperty('resultWithSelection', resultWithSelection));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerTapImpl &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.resultWithSelection, resultWithSelection) ||
                other.resultWithSelection == resultWithSelection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player, resultWithSelection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerTapImplCopyWith<_$PlayerTapImpl> get copyWith =>
      __$$PlayerTapImplCopyWithImpl<_$PlayerTapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String query) search,
    required TResult Function() nextPage,
    required TResult Function(Player player, bool resultWithSelection)
        playerTap,
    required TResult Function() filterTap,
  }) {
    return playerTap(player, resultWithSelection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String query)? search,
    TResult? Function()? nextPage,
    TResult? Function(Player player, bool resultWithSelection)? playerTap,
    TResult? Function()? filterTap,
  }) {
    return playerTap?.call(player, resultWithSelection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String query)? search,
    TResult Function()? nextPage,
    TResult Function(Player player, bool resultWithSelection)? playerTap,
    TResult Function()? filterTap,
    required TResult orElse(),
  }) {
    if (playerTap != null) {
      return playerTap(player, resultWithSelection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Search value) search,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_PlayerTap value) playerTap,
    required TResult Function(_FilterTap value) filterTap,
  }) {
    return playerTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Search value)? search,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_PlayerTap value)? playerTap,
    TResult? Function(_FilterTap value)? filterTap,
  }) {
    return playerTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Search value)? search,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_PlayerTap value)? playerTap,
    TResult Function(_FilterTap value)? filterTap,
    required TResult orElse(),
  }) {
    if (playerTap != null) {
      return playerTap(this);
    }
    return orElse();
  }
}

abstract class _PlayerTap implements PlayerListEvent {
  const factory _PlayerTap(
      {required final Player player,
      required final bool resultWithSelection}) = _$PlayerTapImpl;

  Player get player;
  bool get resultWithSelection;
  @JsonKey(ignore: true)
  _$$PlayerTapImplCopyWith<_$PlayerTapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterTapImplCopyWith<$Res> {
  factory _$$FilterTapImplCopyWith(
          _$FilterTapImpl value, $Res Function(_$FilterTapImpl) then) =
      __$$FilterTapImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterTapImplCopyWithImpl<$Res>
    extends _$PlayerListEventCopyWithImpl<$Res, _$FilterTapImpl>
    implements _$$FilterTapImplCopyWith<$Res> {
  __$$FilterTapImplCopyWithImpl(
      _$FilterTapImpl _value, $Res Function(_$FilterTapImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FilterTapImpl with DiagnosticableTreeMixin implements _FilterTap {
  const _$FilterTapImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerListEvent.filterTap()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PlayerListEvent.filterTap'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FilterTapImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String query) search,
    required TResult Function() nextPage,
    required TResult Function(Player player, bool resultWithSelection)
        playerTap,
    required TResult Function() filterTap,
  }) {
    return filterTap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String query)? search,
    TResult? Function()? nextPage,
    TResult? Function(Player player, bool resultWithSelection)? playerTap,
    TResult? Function()? filterTap,
  }) {
    return filterTap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String query)? search,
    TResult Function()? nextPage,
    TResult Function(Player player, bool resultWithSelection)? playerTap,
    TResult Function()? filterTap,
    required TResult orElse(),
  }) {
    if (filterTap != null) {
      return filterTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Search value) search,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_PlayerTap value) playerTap,
    required TResult Function(_FilterTap value) filterTap,
  }) {
    return filterTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Search value)? search,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_PlayerTap value)? playerTap,
    TResult? Function(_FilterTap value)? filterTap,
  }) {
    return filterTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Search value)? search,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_PlayerTap value)? playerTap,
    TResult Function(_FilterTap value)? filterTap,
    required TResult orElse(),
  }) {
    if (filterTap != null) {
      return filterTap(this);
    }
    return orElse();
  }
}

abstract class _FilterTap implements PlayerListEvent {
  const factory _FilterTap() = _$FilterTapImpl;
}

/// @nodoc
mixin _$PlayerListState {
  ProcessState get processState => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  bool get isPaginating => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<Player>? get players => throw _privateConstructorUsedError;
  FilterConfiguration? get filterConfiguration =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerListStateCopyWith<PlayerListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerListStateCopyWith<$Res> {
  factory $PlayerListStateCopyWith(
          PlayerListState value, $Res Function(PlayerListState) then) =
      _$PlayerListStateCopyWithImpl<$Res, PlayerListState>;
  @useResult
  $Res call(
      {ProcessState processState,
      String query,
      bool isPaginating,
      int page,
      List<Player>? players,
      FilterConfiguration? filterConfiguration});
}

/// @nodoc
class _$PlayerListStateCopyWithImpl<$Res, $Val extends PlayerListState>
    implements $PlayerListStateCopyWith<$Res> {
  _$PlayerListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processState = null,
    Object? query = null,
    Object? isPaginating = null,
    Object? page = null,
    Object? players = freezed,
    Object? filterConfiguration = freezed,
  }) {
    return _then(_value.copyWith(
      processState: null == processState
          ? _value.processState
          : processState // ignore: cast_nullable_to_non_nullable
              as ProcessState,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      isPaginating: null == isPaginating
          ? _value.isPaginating
          : isPaginating // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      players: freezed == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>?,
      filterConfiguration: freezed == filterConfiguration
          ? _value.filterConfiguration
          : filterConfiguration // ignore: cast_nullable_to_non_nullable
              as FilterConfiguration?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerListStateImplCopyWith<$Res>
    implements $PlayerListStateCopyWith<$Res> {
  factory _$$PlayerListStateImplCopyWith(_$PlayerListStateImpl value,
          $Res Function(_$PlayerListStateImpl) then) =
      __$$PlayerListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProcessState processState,
      String query,
      bool isPaginating,
      int page,
      List<Player>? players,
      FilterConfiguration? filterConfiguration});
}

/// @nodoc
class __$$PlayerListStateImplCopyWithImpl<$Res>
    extends _$PlayerListStateCopyWithImpl<$Res, _$PlayerListStateImpl>
    implements _$$PlayerListStateImplCopyWith<$Res> {
  __$$PlayerListStateImplCopyWithImpl(
      _$PlayerListStateImpl _value, $Res Function(_$PlayerListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processState = null,
    Object? query = null,
    Object? isPaginating = null,
    Object? page = null,
    Object? players = freezed,
    Object? filterConfiguration = freezed,
  }) {
    return _then(_$PlayerListStateImpl(
      processState: null == processState
          ? _value.processState
          : processState // ignore: cast_nullable_to_non_nullable
              as ProcessState,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      isPaginating: null == isPaginating
          ? _value.isPaginating
          : isPaginating // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      players: freezed == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>?,
      filterConfiguration: freezed == filterConfiguration
          ? _value.filterConfiguration
          : filterConfiguration // ignore: cast_nullable_to_non_nullable
              as FilterConfiguration?,
    ));
  }
}

/// @nodoc

class _$PlayerListStateImpl
    with DiagnosticableTreeMixin
    implements _PlayerListState {
  const _$PlayerListStateImpl(
      {this.processState = ProcessState.loading,
      this.query = '',
      this.isPaginating = false,
      this.page = 0,
      final List<Player>? players,
      this.filterConfiguration})
      : _players = players;

  @override
  @JsonKey()
  final ProcessState processState;
  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final bool isPaginating;
  @override
  @JsonKey()
  final int page;
  final List<Player>? _players;
  @override
  List<Player>? get players {
    final value = _players;
    if (value == null) return null;
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FilterConfiguration? filterConfiguration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerListState(processState: $processState, query: $query, isPaginating: $isPaginating, page: $page, players: $players, filterConfiguration: $filterConfiguration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerListState'))
      ..add(DiagnosticsProperty('processState', processState))
      ..add(DiagnosticsProperty('query', query))
      ..add(DiagnosticsProperty('isPaginating', isPaginating))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('players', players))
      ..add(DiagnosticsProperty('filterConfiguration', filterConfiguration));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerListStateImpl &&
            (identical(other.processState, processState) ||
                other.processState == processState) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.isPaginating, isPaginating) ||
                other.isPaginating == isPaginating) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.filterConfiguration, filterConfiguration) ||
                other.filterConfiguration == filterConfiguration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      processState,
      query,
      isPaginating,
      page,
      const DeepCollectionEquality().hash(_players),
      filterConfiguration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerListStateImplCopyWith<_$PlayerListStateImpl> get copyWith =>
      __$$PlayerListStateImplCopyWithImpl<_$PlayerListStateImpl>(
          this, _$identity);
}

abstract class _PlayerListState implements PlayerListState {
  const factory _PlayerListState(
      {final ProcessState processState,
      final String query,
      final bool isPaginating,
      final int page,
      final List<Player>? players,
      final FilterConfiguration? filterConfiguration}) = _$PlayerListStateImpl;

  @override
  ProcessState get processState;
  @override
  String get query;
  @override
  bool get isPaginating;
  @override
  int get page;
  @override
  List<Player>? get players;
  @override
  FilterConfiguration? get filterConfiguration;
  @override
  @JsonKey(ignore: true)
  _$$PlayerListStateImplCopyWith<_$PlayerListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
