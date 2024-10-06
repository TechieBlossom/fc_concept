import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/positions/model/position.dart';

abstract class PositionRepository {
  Future<Result<List<Position>>> getAllPositions();
}
