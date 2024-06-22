// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rarity_nested_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RarityNestedFilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Rarity item) selectRarity,
    required TResult Function() done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Rarity item)? selectRarity,
    TResult? Function()? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Rarity item)? selectRarity,
    TResult Function()? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectRarity value) selectRarity,
    required TResult Function(_Done value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectRarity value)? selectRarity,
    TResult? Function(_Done value)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectRarity value)? selectRarity,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RarityNestedFilterEventCopyWith<$Res> {
  factory $RarityNestedFilterEventCopyWith(RarityNestedFilterEvent value,
          $Res Function(RarityNestedFilterEvent) then) =
      _$RarityNestedFilterEventCopyWithImpl<$Res, RarityNestedFilterEvent>;
}

/// @nodoc
class _$RarityNestedFilterEventCopyWithImpl<$Res,
        $Val extends RarityNestedFilterEvent>
    implements $RarityNestedFilterEventCopyWith<$Res> {
  _$RarityNestedFilterEventCopyWithImpl(this._value, this._then);

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
    extends _$RarityNestedFilterEventCopyWithImpl<$Res, _$InitialImpl>
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
    return 'RarityNestedFilterEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RarityNestedFilterEvent.initial'));
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
    required TResult Function(Rarity item) selectRarity,
    required TResult Function() done,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Rarity item)? selectRarity,
    TResult? Function()? done,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Rarity item)? selectRarity,
    TResult Function()? done,
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
    required TResult Function(_SelectRarity value) selectRarity,
    required TResult Function(_Done value) done,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectRarity value)? selectRarity,
    TResult? Function(_Done value)? done,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectRarity value)? selectRarity,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RarityNestedFilterEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SelectRarityImplCopyWith<$Res> {
  factory _$$SelectRarityImplCopyWith(
          _$SelectRarityImpl value, $Res Function(_$SelectRarityImpl) then) =
      __$$SelectRarityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Rarity item});
}

/// @nodoc
class __$$SelectRarityImplCopyWithImpl<$Res>
    extends _$RarityNestedFilterEventCopyWithImpl<$Res, _$SelectRarityImpl>
    implements _$$SelectRarityImplCopyWith<$Res> {
  __$$SelectRarityImplCopyWithImpl(
      _$SelectRarityImpl _value, $Res Function(_$SelectRarityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$SelectRarityImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Rarity,
    ));
  }
}

/// @nodoc

class _$SelectRarityImpl with DiagnosticableTreeMixin implements _SelectRarity {
  const _$SelectRarityImpl({required this.item});

  @override
  final Rarity item;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RarityNestedFilterEvent.selectRarity(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RarityNestedFilterEvent.selectRarity'))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectRarityImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectRarityImplCopyWith<_$SelectRarityImpl> get copyWith =>
      __$$SelectRarityImplCopyWithImpl<_$SelectRarityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Rarity item) selectRarity,
    required TResult Function() done,
  }) {
    return selectRarity(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Rarity item)? selectRarity,
    TResult? Function()? done,
  }) {
    return selectRarity?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Rarity item)? selectRarity,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (selectRarity != null) {
      return selectRarity(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectRarity value) selectRarity,
    required TResult Function(_Done value) done,
  }) {
    return selectRarity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectRarity value)? selectRarity,
    TResult? Function(_Done value)? done,
  }) {
    return selectRarity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectRarity value)? selectRarity,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (selectRarity != null) {
      return selectRarity(this);
    }
    return orElse();
  }
}

abstract class _SelectRarity implements RarityNestedFilterEvent {
  const factory _SelectRarity({required final Rarity item}) =
      _$SelectRarityImpl;

  Rarity get item;
  @JsonKey(ignore: true)
  _$$SelectRarityImplCopyWith<_$SelectRarityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoneImplCopyWith<$Res> {
  factory _$$DoneImplCopyWith(
          _$DoneImpl value, $Res Function(_$DoneImpl) then) =
      __$$DoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DoneImplCopyWithImpl<$Res>
    extends _$RarityNestedFilterEventCopyWithImpl<$Res, _$DoneImpl>
    implements _$$DoneImplCopyWith<$Res> {
  __$$DoneImplCopyWithImpl(_$DoneImpl _value, $Res Function(_$DoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DoneImpl with DiagnosticableTreeMixin implements _Done {
  const _$DoneImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RarityNestedFilterEvent.done()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RarityNestedFilterEvent.done'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Rarity item) selectRarity,
    required TResult Function() done,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Rarity item)? selectRarity,
    TResult? Function()? done,
  }) {
    return done?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Rarity item)? selectRarity,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectRarity value) selectRarity,
    required TResult Function(_Done value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectRarity value)? selectRarity,
    TResult? Function(_Done value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectRarity value)? selectRarity,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _Done implements RarityNestedFilterEvent {
  const factory _Done() = _$DoneImpl;
}

/// @nodoc
mixin _$RarityNestedFilterState {
  ProcessState get processState => throw _privateConstructorUsedError;
  RarityNestedFilterPageParams? get rarityNestedFilterPageParams =>
      throw _privateConstructorUsedError;
  List<Rarity>? get rarities => throw _privateConstructorUsedError;
  List<Rarity>? get selectedRarities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RarityNestedFilterStateCopyWith<RarityNestedFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RarityNestedFilterStateCopyWith<$Res> {
  factory $RarityNestedFilterStateCopyWith(RarityNestedFilterState value,
          $Res Function(RarityNestedFilterState) then) =
      _$RarityNestedFilterStateCopyWithImpl<$Res, RarityNestedFilterState>;
  @useResult
  $Res call(
      {ProcessState processState,
      RarityNestedFilterPageParams? rarityNestedFilterPageParams,
      List<Rarity>? rarities,
      List<Rarity>? selectedRarities});
}

/// @nodoc
class _$RarityNestedFilterStateCopyWithImpl<$Res,
        $Val extends RarityNestedFilterState>
    implements $RarityNestedFilterStateCopyWith<$Res> {
  _$RarityNestedFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processState = null,
    Object? rarityNestedFilterPageParams = freezed,
    Object? rarities = freezed,
    Object? selectedRarities = freezed,
  }) {
    return _then(_value.copyWith(
      processState: null == processState
          ? _value.processState
          : processState // ignore: cast_nullable_to_non_nullable
              as ProcessState,
      rarityNestedFilterPageParams: freezed == rarityNestedFilterPageParams
          ? _value.rarityNestedFilterPageParams
          : rarityNestedFilterPageParams // ignore: cast_nullable_to_non_nullable
              as RarityNestedFilterPageParams?,
      rarities: freezed == rarities
          ? _value.rarities
          : rarities // ignore: cast_nullable_to_non_nullable
              as List<Rarity>?,
      selectedRarities: freezed == selectedRarities
          ? _value.selectedRarities
          : selectedRarities // ignore: cast_nullable_to_non_nullable
              as List<Rarity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RarityNestedFilterStateImplCopyWith<$Res>
    implements $RarityNestedFilterStateCopyWith<$Res> {
  factory _$$RarityNestedFilterStateImplCopyWith(
          _$RarityNestedFilterStateImpl value,
          $Res Function(_$RarityNestedFilterStateImpl) then) =
      __$$RarityNestedFilterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProcessState processState,
      RarityNestedFilterPageParams? rarityNestedFilterPageParams,
      List<Rarity>? rarities,
      List<Rarity>? selectedRarities});
}

/// @nodoc
class __$$RarityNestedFilterStateImplCopyWithImpl<$Res>
    extends _$RarityNestedFilterStateCopyWithImpl<$Res,
        _$RarityNestedFilterStateImpl>
    implements _$$RarityNestedFilterStateImplCopyWith<$Res> {
  __$$RarityNestedFilterStateImplCopyWithImpl(
      _$RarityNestedFilterStateImpl _value,
      $Res Function(_$RarityNestedFilterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processState = null,
    Object? rarityNestedFilterPageParams = freezed,
    Object? rarities = freezed,
    Object? selectedRarities = freezed,
  }) {
    return _then(_$RarityNestedFilterStateImpl(
      processState: null == processState
          ? _value.processState
          : processState // ignore: cast_nullable_to_non_nullable
              as ProcessState,
      rarityNestedFilterPageParams: freezed == rarityNestedFilterPageParams
          ? _value.rarityNestedFilterPageParams
          : rarityNestedFilterPageParams // ignore: cast_nullable_to_non_nullable
              as RarityNestedFilterPageParams?,
      rarities: freezed == rarities
          ? _value._rarities
          : rarities // ignore: cast_nullable_to_non_nullable
              as List<Rarity>?,
      selectedRarities: freezed == selectedRarities
          ? _value._selectedRarities
          : selectedRarities // ignore: cast_nullable_to_non_nullable
              as List<Rarity>?,
    ));
  }
}

/// @nodoc

class _$RarityNestedFilterStateImpl
    with DiagnosticableTreeMixin
    implements _RarityNestedFilterState {
  const _$RarityNestedFilterStateImpl(
      {this.processState = ProcessState.loading,
      this.rarityNestedFilterPageParams,
      final List<Rarity>? rarities,
      final List<Rarity>? selectedRarities})
      : _rarities = rarities,
        _selectedRarities = selectedRarities;

  @override
  @JsonKey()
  final ProcessState processState;
  @override
  final RarityNestedFilterPageParams? rarityNestedFilterPageParams;
  final List<Rarity>? _rarities;
  @override
  List<Rarity>? get rarities {
    final value = _rarities;
    if (value == null) return null;
    if (_rarities is EqualUnmodifiableListView) return _rarities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Rarity>? _selectedRarities;
  @override
  List<Rarity>? get selectedRarities {
    final value = _selectedRarities;
    if (value == null) return null;
    if (_selectedRarities is EqualUnmodifiableListView)
      return _selectedRarities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RarityNestedFilterState(processState: $processState, rarityNestedFilterPageParams: $rarityNestedFilterPageParams, rarities: $rarities, selectedRarities: $selectedRarities)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RarityNestedFilterState'))
      ..add(DiagnosticsProperty('processState', processState))
      ..add(DiagnosticsProperty(
          'rarityNestedFilterPageParams', rarityNestedFilterPageParams))
      ..add(DiagnosticsProperty('rarities', rarities))
      ..add(DiagnosticsProperty('selectedRarities', selectedRarities));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RarityNestedFilterStateImpl &&
            (identical(other.processState, processState) ||
                other.processState == processState) &&
            (identical(other.rarityNestedFilterPageParams,
                    rarityNestedFilterPageParams) ||
                other.rarityNestedFilterPageParams ==
                    rarityNestedFilterPageParams) &&
            const DeepCollectionEquality().equals(other._rarities, _rarities) &&
            const DeepCollectionEquality()
                .equals(other._selectedRarities, _selectedRarities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      processState,
      rarityNestedFilterPageParams,
      const DeepCollectionEquality().hash(_rarities),
      const DeepCollectionEquality().hash(_selectedRarities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RarityNestedFilterStateImplCopyWith<_$RarityNestedFilterStateImpl>
      get copyWith => __$$RarityNestedFilterStateImplCopyWithImpl<
          _$RarityNestedFilterStateImpl>(this, _$identity);
}

abstract class _RarityNestedFilterState implements RarityNestedFilterState {
  const factory _RarityNestedFilterState(
      {final ProcessState processState,
      final RarityNestedFilterPageParams? rarityNestedFilterPageParams,
      final List<Rarity>? rarities,
      final List<Rarity>? selectedRarities}) = _$RarityNestedFilterStateImpl;

  @override
  ProcessState get processState;
  @override
  RarityNestedFilterPageParams? get rarityNestedFilterPageParams;
  @override
  List<Rarity>? get rarities;
  @override
  List<Rarity>? get selectedRarities;
  @override
  @JsonKey(ignore: true)
  _$$RarityNestedFilterStateImplCopyWith<_$RarityNestedFilterStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
