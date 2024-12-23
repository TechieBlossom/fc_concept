import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/play_styles/model/play_style.dart';
import 'package:core_domain/src/domain/players/model/player.dart';
import 'package:core_domain/src/domain/players/model/player_collection_type.dart';
import 'package:core_domain/src/domain/players/player_repository.dart';
import 'package:core_domain/src/domain/rarity/model/rarity.dart';
import 'package:core_domain/src/domain/roles/model/role.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPlayerCollectionUseCase {
  const GetPlayerCollectionUseCase(this._playerRepository);

  final PlayerRepository _playerRepository;

  Future<Result<List<Player>?>> call({
    required PlayerCollectionType type,
    required dynamic data,
    String? query,
    int page = 0,
  }) async =>
      switch (type) {
        PlayerCollectionType.rarity => _playerRepository.getRarityCollection(
            rarityId: (data as Rarity).eaId,
            query: query,
            page: page,
          ),
        PlayerCollectionType.role => _playerRepository.getRoleCollection(
            roleId: (data as Role).eaId,
            query: query,
            page: page,
          ),
        PlayerCollectionType.rolePlus => _playerRepository.getRoleCollection(
            isPlusPlus: true,
            roleId: (data as Role).eaId,
            query: query,
            page: page,
          ),
        PlayerCollectionType.playStyle =>
          _playerRepository.getPlayStyleCollection(
            playStyleId: (data as PlayStyle).eaId,
            query: query,
            page: page,
          ),
        PlayerCollectionType.playStylePlus =>
          _playerRepository.getPlayStyleCollection(
            isPlus: true,
            playStyleId: (data as PlayStyle).eaId,
            query: query,
            page: page,
          ),
        _ => _playerRepository.topPlayers(page: page),
      };
}
