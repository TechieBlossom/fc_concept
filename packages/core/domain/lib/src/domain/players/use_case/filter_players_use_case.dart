import 'package:collection/collection.dart';
import 'package:core_domain/src/domain/filters/model/filter_configuration.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/players/model/player.dart';
import 'package:core_domain/src/domain/players/player_repository.dart';
import 'package:core_domain/src/domain/positions/model/position.dart';
import 'package:core_domain/src/domain/positions/use_case/get_all_positions_use_case.dart';
import 'package:core_domain/src/domain/positions/use_case/get_positions_from_position_group.dart';
import 'package:injectable/injectable.dart';

@injectable
class FilterPlayersUseCase {
  const FilterPlayersUseCase(
    this._playerRepository,
    this._getPositionsFromPositionGroup,
    this._getAllPositionsUseCase,
  );

  final PlayerRepository _playerRepository;
  final GetPositionsFromPositionGroup _getPositionsFromPositionGroup;
  final GetAllPositionsUseCase _getAllPositionsUseCase;

  Future<Result<List<Player>?>> call({
    int page = 0,
    required FilterConfiguration? filterConfiguration,
  }) async {
    final allPositionsResult = await _getAllPositionsUseCase();
    switch (allPositionsResult) {
      case Success(data: final allPositions):
        final positionsFromPositionGroups = filterConfiguration?.positionGroups
            ?.map<List<Position>>(
              (group) => _getPositionsFromPositionGroup(allPositions, group),
            )
            .flattened
            .toList();
        return _playerRepository.filterPlayers(
          page: page,
          leagues: filterConfiguration?.leagues,
          nations: filterConfiguration?.nations,
          clubs: filterConfiguration?.clubs,
          rarities: filterConfiguration?.rarities,
          overallRatingRange: filterConfiguration?.overallRatingRange,
          genders: filterConfiguration?.genders,
          foots: filterConfiguration?.foots,
          positions: <Position>{
            ...?filterConfiguration?.positions,
            ...?positionsFromPositionGroups,
          }.toList(),
          roles: filterConfiguration?.roles,
          playStyles: filterConfiguration?.playStyles,
        );
      case Failure(exception: final exception):
        return Failure(exception: exception);
    }
  }
}
