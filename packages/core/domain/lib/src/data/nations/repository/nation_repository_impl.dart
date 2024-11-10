import 'package:cached_annotation/cached_annotation.dart';
import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/data/nations/table_nation.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/nations/model/nation.dart';
import 'package:core_domain/src/domain/nations/nation_repository.dart';
import 'package:injectable/injectable.dart';

part 'nation_repository_impl.cached.dart';

const _cacheTTL = 30 * 24 * 60 * 60; // 30 days

@Injectable(as: NationRepository)
@WithCache()
abstract mixin class NationRepositoryImpl
    implements NationRepository, _$NationRepositoryImpl {
  @factoryMethod
  factory NationRepositoryImpl() = _NationRepositoryImpl;

  @override
  Future<Result<List<Nation>>> getTopNations() async {
    try {
      final rawResponse = await _getNations(true);
      final nations = mapNations(rawResponse);
      return Success(data: nations);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @override
  Future<Result<List<Nation>>> getOtherNations() async {
    try {
      final rawResponse = await _getNations(false);
      final nations = mapNations(rawResponse);
      return Success(data: nations);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @PersistentCached(ttl: _cacheTTL)
  Future<List<dynamic>> _getNations(bool isTop) async {
    try {
      final nationsResponse = await supabase
          .from(TableNation.tableNation)
          .select()
          .eq(TableNation.isTop, isTop)
          .order(TableNation.name, ascending: true);

      return nationsResponse;
    } catch (e, _) {
      rethrow;
    }
  }

  List<Nation> mapNations(List<dynamic> nationsResponse) {
    return nationsResponse
        .map((value) => Nation.fromMap(value as Map<String, dynamic>))
        .toList();
  }
}
