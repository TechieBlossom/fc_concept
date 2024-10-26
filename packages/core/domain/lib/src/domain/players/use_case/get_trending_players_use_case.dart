import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/players/model/player.dart';
import 'package:core_domain/src/domain/players/player_repository.dart';
import 'package:core_domain/src/domain/rarity_squads/model/rarity_squad.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetTrendingPlayersUseCase {
  const GetTrendingPlayersUseCase(this._playerRepository);

  final PlayerRepository _playerRepository;

  Future<Result<List<Player>?>> call({
    required RaritySquad? raritySquad,
  }) async {
    if (raritySquad == null) {
      return _playerRepository.recentPlayers();
    }
    return _playerRepository.getPlayersByRaritySquad(
      raritySquadId: raritySquad.id,
    );
  }
}
