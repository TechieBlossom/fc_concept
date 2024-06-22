import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/players/model/player.dart';
import 'package:core_domain/src/domain/players/player_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchPlayersUseCase {
  const SearchPlayersUseCase(this._playerRepository);

  final PlayerRepository _playerRepository;

  Future<Result<List<Player>?>> call({
    required String query,
    int page = 0,
  }) async {
    return _playerRepository.searchPlayers(page: page, query: query);
  }
}
