import 'package:core_domain/domain.dart';
import 'package:core_domain/src/domain/players/player_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FilterPlayersUseCase {
  const FilterPlayersUseCase(this._playerRepository);

  final PlayerRepository _playerRepository;

  Future<Result<List<Player>?>> call({
    int page = 0,
    required FilterConfiguration? filterConfiguration,
  }) async {
    return _playerRepository.filterPlayers(
      page: page,
      leagues: filterConfiguration?.leagues,
      nations: filterConfiguration?.nations,
      clubs: filterConfiguration?.clubs,
      rarities: filterConfiguration?.rarities,
      genders: filterConfiguration?.genders,
      foots: filterConfiguration?.foots,
      positions: filterConfiguration?.positions,
    );
  }
}
