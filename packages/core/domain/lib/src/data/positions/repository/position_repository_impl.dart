import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/data/positions/table_position.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/positions/model/position.dart';
import 'package:core_domain/src/domain/positions/position_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PositionRepository)
class PositionRepositoryImpl extends PositionRepository {
  @override
  Future<Result<List<Position>>> getAllPositions() async {
    try {
      final positionsResponse = await supabase
          .from(TablePosition.tablePosition)
          .select()
          .order(TablePosition.eaId, ascending: true);

      final roles = mapPositions(positionsResponse);
      return Success(data: roles);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  List<Position> mapPositions(
    List<Map<String, dynamic>> positionsResponse,
  ) =>
      positionsResponse.map(Position.fromMap).toList();
}
