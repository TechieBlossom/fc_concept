import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/players/model/player.dart';
import 'package:core_domain/src/domain/players/player_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPlayerDetailsUseCase {
  const GetPlayerDetailsUseCase(this._playerRepository);

  final PlayerRepository _playerRepository;

  Future<Result<Player>> call({required int playerId}) async {
    return _playerRepository.getPlayer(playerId: playerId);
  }
}
