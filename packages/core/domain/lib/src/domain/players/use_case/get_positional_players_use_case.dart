import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/players/model/player.dart';
import 'package:core_domain/src/domain/players/player_repository.dart';
import 'package:core_domain/src/domain/positions/model/position_group.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPositionalPlayersUseCase {
  const GetPositionalPlayersUseCase(this._playerRepository);

  final PlayerRepository _playerRepository;

  Future<Result<List<Player>?>> call({
    required PositionGroup positionGroup,
  }) async =>
      _playerRepository.getPositionalPlayers(positionGroup);
}
