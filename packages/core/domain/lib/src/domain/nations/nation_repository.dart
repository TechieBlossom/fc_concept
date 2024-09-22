import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/nations/model/nation.dart';

abstract class NationRepository {
  Future<Result<List<Nation>>> getOtherNations();
  @Deprecated('Filter to get top nations not available yet')
  Future<Result<List<Nation>>> getTopNations();
}
