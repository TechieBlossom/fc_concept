import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/data/index/table_index.dart';
import 'package:core_domain/src/domain/index/index_repository.dart';
import 'package:core_domain/src/domain/index/model/index_data.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IndexRepository)
class IndexRepositoryImpl extends IndexRepository {
  @override
  Future<Result<List<IndexData>>> getIndexData() async {
    try {
      final indexesResponse = await supabase
          .from(TableIndex.tableIndex)
          .select('forwards, midfielders, defenders, goalkeepers')
          .order('id', ascending: false)
          .limit(2);

      final indexes = mapIndexes(indexesResponse);
      return Success(data: indexes);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  List<IndexData> mapIndexes(List<Map<String, dynamic>> indexesResponse) =>
      indexesResponse.map(IndexData.fromMap).toList();
}
