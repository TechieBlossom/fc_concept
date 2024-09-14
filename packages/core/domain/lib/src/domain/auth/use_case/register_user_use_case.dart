import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/players/model/player.dart';
import 'package:core_domain/src/domain/players/player_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPlayerByVersionUseCase {
  const GetPlayerByVersionUseCase(this._playerRepository);

  final PlayerRepository _playerRepository;

  Future<Result<Player>> call({
    required int playerId,
    required int versionId,
  }) async {
    return _playerRepository.getPlayerByVersion(
      playerId: playerId,
      versionId: versionId,
    );
  }
}
