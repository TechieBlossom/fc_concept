import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/players/model/player.dart';
import 'package:core_domain/src/domain/players/player_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPlayersByEaIdsUseCase {
  GetPlayersByEaIdsUseCase(this._playersRepository);

  final PlayerRepository _playersRepository;

  Future<Result<List<Player>?>> call({
    required List<int> eaIds,
  }) async =>
      _playersRepository.getPlayersByEaIds(eaIds: eaIds);
}
