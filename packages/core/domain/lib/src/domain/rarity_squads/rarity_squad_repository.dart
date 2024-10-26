import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/rarity_squads/model/rarity_squad.dart';

abstract class RaritySquadRepository {
  Future<Result<List<RaritySquad>>> getUniqueRaritySquads();
}
