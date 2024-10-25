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
    required PositionGroup? positionGroup,
  }) async {
    switch (positionGroup) {
      case PositionGroup.attack:
        return _playerRepository.topForwards();
      case PositionGroup.midfielder:
        return _playerRepository.topMidfielders();
      case PositionGroup.defence:
        return _playerRepository.topDefence();
      default:
        return _playerRepository.topGoalKeepers();
    }
  }
}
