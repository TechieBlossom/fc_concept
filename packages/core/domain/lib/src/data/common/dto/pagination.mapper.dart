// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pagination.dart';

class PaginationMapper extends ClassMapperBase<Pagination> {
  PaginationMapper._();

  static PaginationMapper? _instance;
  static PaginationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaginationMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Pagination';

  static int? _$currentCount(Pagination v) => v.currentCount;
  static const Field<Pagination, int> _f$currentCount =
      Field('currentCount', _$currentCount, opt: true);
  static int? _$countTotal(Pagination v) => v.countTotal;
  static const Field<Pagination, int> _f$countTotal =
      Field('countTotal', _$countTotal, opt: true);
  static int? _$pageCurrent(Pagination v) => v.pageCurrent;
  static const Field<Pagination, int> _f$pageCurrent =
      Field('pageCurrent', _$pageCurrent, opt: true);
  static int? _$pageTotal(Pagination v) => v.pageTotal;
  static const Field<Pagination, int> _f$pageTotal =
      Field('pageTotal', _$pageTotal, opt: true);
  static int? _$itemsPerPage(Pagination v) => v.itemsPerPage;
  static const Field<Pagination, int> _f$itemsPerPage =
      Field('itemsPerPage', _$itemsPerPage, opt: true);

  @override
  final MappableFields<Pagination> fields = const {
    #currentCount: _f$currentCount,
    #countTotal: _f$countTotal,
    #pageCurrent: _f$pageCurrent,
    #pageTotal: _f$pageTotal,
    #itemsPerPage: _f$itemsPerPage,
  };

  static Pagination _instantiate(DecodingData data) {
    return Pagination(
        currentCount: data.dec(_f$currentCount),
        countTotal: data.dec(_f$countTotal),
        pageCurrent: data.dec(_f$pageCurrent),
        pageTotal: data.dec(_f$pageTotal),
        itemsPerPage: data.dec(_f$itemsPerPage));
  }

  @override
  final Function instantiate = _instantiate;

  static Pagination fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Pagination>(map);
  }

  static Pagination fromJson(String json) {
    return ensureInitialized().decodeJson<Pagination>(json);
  }
}

mixin PaginationMappable {
  String toJson() {
    return PaginationMapper.ensureInitialized()
        .encodeJson<Pagination>(this as Pagination);
  }

  Map<String, dynamic> toMap() {
    return PaginationMapper.ensureInitialized()
        .encodeMap<Pagination>(this as Pagination);
  }

  PaginationCopyWith<Pagination, Pagination, Pagination> get copyWith =>
      _PaginationCopyWithImpl<Pagination, Pagination>(
          this as Pagination, $identity, $identity);
  @override
  String toString() {
    return PaginationMapper.ensureInitialized()
        .stringifyValue(this as Pagination);
  }

  @override
  bool operator ==(Object other) {
    return PaginationMapper.ensureInitialized()
        .equalsValue(this as Pagination, other);
  }

  @override
  int get hashCode {
    return PaginationMapper.ensureInitialized().hashValue(this as Pagination);
  }
}

extension PaginationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Pagination, $Out> {
  PaginationCopyWith<$R, Pagination, $Out> get $asPagination =>
      $base.as((v, t, t2) => _PaginationCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PaginationCopyWith<$R, $In extends Pagination, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? currentCount,
      int? countTotal,
      int? pageCurrent,
      int? pageTotal,
      int? itemsPerPage});
  PaginationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PaginationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Pagination, $Out>
    implements PaginationCopyWith<$R, Pagination, $Out> {
  _PaginationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Pagination> $mapper =
      PaginationMapper.ensureInitialized();
  @override
  $R call(
          {Object? currentCount = $none,
          Object? countTotal = $none,
          Object? pageCurrent = $none,
          Object? pageTotal = $none,
          Object? itemsPerPage = $none}) =>
      $apply(FieldCopyWithData({
        if (currentCount != $none) #currentCount: currentCount,
        if (countTotal != $none) #countTotal: countTotal,
        if (pageCurrent != $none) #pageCurrent: pageCurrent,
        if (pageTotal != $none) #pageTotal: pageTotal,
        if (itemsPerPage != $none) #itemsPerPage: itemsPerPage
      }));
  @override
  Pagination $make(CopyWithData data) => Pagination(
      currentCount: data.get(#currentCount, or: $value.currentCount),
      countTotal: data.get(#countTotal, or: $value.countTotal),
      pageCurrent: data.get(#pageCurrent, or: $value.pageCurrent),
      pageTotal: data.get(#pageTotal, or: $value.pageTotal),
      itemsPerPage: data.get(#itemsPerPage, or: $value.itemsPerPage));

  @override
  PaginationCopyWith<$R2, Pagination, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PaginationCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
