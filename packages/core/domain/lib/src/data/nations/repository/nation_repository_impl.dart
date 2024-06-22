import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/data/nations/table_nation.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/nations/model/nation.dart';
import 'package:core_domain/src/domain/nations/nation_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: NationRepository)
class NationRepositoryImpl extends NationRepository {
  @override
  Future<Result<List<Nation>>> getTopNations() async {
    try {
      final nationsResponse = await supabase
          .from(TableNation.tableNation)
          .select<List<Map<String, dynamic>>>()
          .eq(TableNation.isTop, true)
          .order(TableNation.name);

      final nations = mapNations(nationsResponse);
      return Success(data: nations);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @override
  Future<Result<List<Nation>>> getOtherNations() async {
    try {
      final nationsResponse = await supabase
          .from(TableNation.tableNation)
          .select<List<Map<String, dynamic>>>()
          .eq(TableNation.isTop, false)
          .order(TableNation.name);

      final nations = mapNations(nationsResponse);
      return Success(data: nations);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  List<Nation> mapNations(List<Map<String, dynamic>> nationsResponse) =>
      nationsResponse.map(Nation.fromMap).toList();
}
