import 'package:dart_mappable/dart_mappable.dart';

part 'pagination.mapper.dart';

@MappableClass()
class Pagination with PaginationMappable {
  Pagination({
    this.currentCount,
    this.countTotal,
    this.pageCurrent,
    this.pageTotal,
    this.itemsPerPage,
  });

  final int? currentCount;
  final int? countTotal;
  final int? pageCurrent;
  final int? pageTotal;
  final int? itemsPerPage;

  static const fromMap = PaginationMapper.fromMap;
}
