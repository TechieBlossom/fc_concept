import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/nations/model/nation.dart';

abstract class NationRepository {
  Future<Result<List<Nation>>> getOtherNations();
  Future<Result<List<Nation>>> getTopNations();
}
