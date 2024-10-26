import 'package:core_domain/domain.dart';
import 'package:core_domain/src/domain/rarity_squads/model/rarity_squad.dart';
import 'package:core_domain/src/domain/rarity_squads/rarity_squad_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUniqueRaritySquads {
  const GetUniqueRaritySquads(this.raritySquadRepository);

  final RaritySquadRepository raritySquadRepository;

  Future<Result<List<RaritySquad>>> call() async {
    return raritySquadRepository.getUniqueRaritySquads();
  }
}
