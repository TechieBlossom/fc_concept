import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@Freezed(toJson: false)
class Pagination with _$Pagination {
  const factory Pagination({
    int? currentCount,
    int? countTotal,
    int? pageCurrent,
    int? pageTotal,
    int? itemsPerPage,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
