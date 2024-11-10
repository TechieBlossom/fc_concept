import 'package:cached_annotation/cached_annotation.dart';
import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/data/positions/table_position.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/positions/model/position.dart';
import 'package:core_domain/src/domain/positions/position_repository.dart';
import 'package:injectable/injectable.dart';

part 'position_repository_impl.cached.dart';

const _cacheTTL = 365 * 24 * 60 * 60; // 365 days

@Injectable(as: PositionRepository)
@WithCache()
abstract mixin class PositionRepositoryImpl
    implements PositionRepository, _$PositionRepositoryImpl {
  @factoryMethod
  factory PositionRepositoryImpl() = _PositionRepositoryImpl;

  @override
  Future<Result<List<Position>>> getAllPositions() async {
    try {
      final rawResponse = await _getPositions();
      final roles = mapPositions(rawResponse);
      return Success(data: roles);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @PersistentCached(ttl: _cacheTTL)
  Future<List<dynamic>> _getPositions() async {
    try {
      final positionsResponse = await supabase
          .from(TablePosition.tablePosition)
          .select()
          .order(TablePosition.eaId, ascending: true);

      return positionsResponse;
    } catch (e, _) {
      rethrow;
    }
  }

  List<Position> mapPositions(List<dynamic> positionsResponse) =>
      positionsResponse
          .map((value) => Position.fromMap(value as Map<String, dynamic>))
          .toList();
}
