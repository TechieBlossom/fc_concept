import 'package:core_api_client/api_client.dart';
import 'package:core_domain/domain.dart';
import 'package:core_domain/src/data/rarities/table_rarity.dart';
import 'package:core_domain/src/domain/rarity/rarity_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: RarityRepository)
class RarityRepositoryImpl extends RarityRepository {
  @override
  Future<Result<List<Rarity>>> getAllRarities({
    required List<int> rarityIds,
  }) async {
    try {
      final raritiesResponse = await supabase
          .from(TableRarity.tableRarity)
          .select()
          .order(TableRarity.name, ascending: true);

      final rarities = mapRarities(raritiesResponse);
      return Success(data: rarities);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  List<Rarity> mapRarities(List<Map<String, dynamic>> raritiesResponse) =>
      raritiesResponse.map((json) => Rarity.fromMap(json)).toList();
}
