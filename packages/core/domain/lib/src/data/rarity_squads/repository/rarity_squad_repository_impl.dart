import 'package:core_api_client/api_client.dart';
import 'package:core_domain/domain.dart';
import 'package:core_domain/src/data/rarity_squads/table_rarity_squad.dart';
import 'package:core_domain/src/domain/rarity_squads/rarity_squad_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: RaritySquadRepository)
class RaritySquadRepositoryImpl extends RaritySquadRepository {
  @override
  Future<Result<List<RaritySquad>>> getUniqueRaritySquads() async {
    try {
      final raritiesResponse = await supabase
          .from(TableRaritySquad.tableRaritySquad)
          .select()
          .order(TableRaritySquad.releaseDate, ascending: false);

      final rarities = mapRarities(raritiesResponse);
      return Success(data: rarities);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  List<RaritySquad> mapRarities(
    List<Map<String, dynamic>> raritySquadsResponse,
  ) =>
      raritySquadsResponse.map((json) => RaritySquad.fromMap(json)).toList();
}
