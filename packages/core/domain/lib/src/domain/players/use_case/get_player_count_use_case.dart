import 'package:core_domain/src/domain/players/player_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPlayerCountUseCase {
  const GetPlayerCountUseCase(this._playerRepository);

  final PlayerRepository _playerRepository;

  Future<int> call() async => _playerRepository.getPlayerCount();
}
