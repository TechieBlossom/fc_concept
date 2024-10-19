import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/players/model/player.dart';
import 'package:core_domain/src/domain/players/player_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPopularPlayerUseCase {
  const GetPopularPlayerUseCase(this._playerRepository);

  final PlayerRepository _playerRepository;

  Future<Result<List<Player>?>> call() async {
    return _playerRepository.recentPlayers();
  }
}
