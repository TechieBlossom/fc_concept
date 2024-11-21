import 'package:core_domain/src/domain/index/model/index_data.dart';
import 'package:core_domain/src/domain/index/model/index_type.dart';
import 'package:core_domain/src/domain/models/result.dart';

abstract class IndexRepository {
  Future<Result<List<IndexData>>> getIndexData();
  Future<Result<List<IndexData>>> getAllIndexData({
    required IndexType indexType,
  });
}
