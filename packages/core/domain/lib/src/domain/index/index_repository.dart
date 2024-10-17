import 'package:core_domain/src/domain/index/model/index_data.dart';
import 'package:core_domain/src/domain/models/result.dart';

abstract class IndexRepository {
  Future<Result<List<IndexData>>> getIndexData();
}
