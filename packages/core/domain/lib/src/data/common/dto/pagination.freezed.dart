// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  int? get currentCount => throw _privateConstructorUsedError;
  int? get countTotal => throw _privateConstructorUsedError;
  int? get pageCurrent => throw _privateConstructorUsedError;
  int? get pageTotal => throw _privateConstructorUsedError;
  int? get itemsPerPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call(
      {int? currentCount,
      int? countTotal,
      int? pageCurrent,
      int? pageTotal,
      int? itemsPerPage});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentCount = freezed,
    Object? countTotal = freezed,
    Object? pageCurrent = freezed,
    Object? pageTotal = freezed,
    Object? itemsPerPage = freezed,
  }) {
    return _then(_value.copyWith(
      currentCount: freezed == currentCount
          ? _value.currentCount
          : currentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      countTotal: freezed == countTotal
          ? _value.countTotal
          : countTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      pageCurrent: freezed == pageCurrent
          ? _value.pageCurrent
          : pageCurrent // ignore: cast_nullable_to_non_nullable
              as int?,
      pageTotal: freezed == pageTotal
          ? _value.pageTotal
          : pageTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      itemsPerPage: freezed == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationImplCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(
          _$PaginationImpl value, $Res Function(_$PaginationImpl) then) =
      __$$PaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? currentCount,
      int? countTotal,
      int? pageCurrent,
      int? pageTotal,
      int? itemsPerPage});
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl>
    implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(
      _$PaginationImpl _value, $Res Function(_$PaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentCount = freezed,
    Object? countTotal = freezed,
    Object? pageCurrent = freezed,
    Object? pageTotal = freezed,
    Object? itemsPerPage = freezed,
  }) {
    return _then(_$PaginationImpl(
      currentCount: freezed == currentCount
          ? _value.currentCount
          : currentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      countTotal: freezed == countTotal
          ? _value.countTotal
          : countTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      pageCurrent: freezed == pageCurrent
          ? _value.pageCurrent
          : pageCurrent // ignore: cast_nullable_to_non_nullable
              as int?,
      pageTotal: freezed == pageTotal
          ? _value.pageTotal
          : pageTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      itemsPerPage: freezed == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$PaginationImpl implements _Pagination {
  const _$PaginationImpl(
      {this.currentCount,
      this.countTotal,
      this.pageCurrent,
      this.pageTotal,
      this.itemsPerPage});

  factory _$PaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationImplFromJson(json);

  @override
  final int? currentCount;
  @override
  final int? countTotal;
  @override
  final int? pageCurrent;
  @override
  final int? pageTotal;
  @override
  final int? itemsPerPage;

  @override
  String toString() {
    return 'Pagination(currentCount: $currentCount, countTotal: $countTotal, pageCurrent: $pageCurrent, pageTotal: $pageTotal, itemsPerPage: $itemsPerPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl &&
            (identical(other.currentCount, currentCount) ||
                other.currentCount == currentCount) &&
            (identical(other.countTotal, countTotal) ||
                other.countTotal == countTotal) &&
            (identical(other.pageCurrent, pageCurrent) ||
                other.pageCurrent == pageCurrent) &&
            (identical(other.pageTotal, pageTotal) ||
                other.pageTotal == pageTotal) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentCount, countTotal,
      pageCurrent, pageTotal, itemsPerPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      __$$PaginationImplCopyWithImpl<_$PaginationImpl>(this, _$identity);
}

abstract class _Pagination implements Pagination {
  const factory _Pagination(
      {final int? currentCount,
      final int? countTotal,
      final int? pageCurrent,
      final int? pageTotal,
      final int? itemsPerPage}) = _$PaginationImpl;

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$PaginationImpl.fromJson;

  @override
  int? get currentCount;
  @override
  int? get countTotal;
  @override
  int? get pageCurrent;
  @override
  int? get pageTotal;
  @override
  int? get itemsPerPage;
  @override
  @JsonKey(ignore: true)
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
