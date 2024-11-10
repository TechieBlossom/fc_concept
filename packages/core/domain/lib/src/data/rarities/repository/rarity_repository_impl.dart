import 'package:core_api_client/api_client.dart';
import 'package:core_domain/domain.dart';
import 'package:core_domain/src/data/rarities/table_rarity.dart';
import 'package:core_domain/src/domain/rarity/rarity_repository.dart';
import 'package:injectable/injectable.dart';

part 'rarity_repository_impl.cached.dart';

const _cacheTTL = 24 * 60 * 60; // 1 day

@Injectable(as: RarityRepository)
@WithCache()
abstract mixin class RarityRepositoryImpl
    implements RarityRepository, _$RarityRepositoryImpl {
  @factoryMethod
  factory RarityRepositoryImpl() = _RarityRepositoryImpl;

  @override
  Future<Result<List<Rarity>>> getAllRarities() async {
    try {
      final rawResponse = await _getRarities();
      final rarities = mapRarities(rawResponse);
      return Success(data: rarities);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @PersistentCached(ttl: _cacheTTL)
  Future<List<dynamic>> _getRarities() async {
    try {
      final raritiesResponse = await supabase
          .from(TableRarity.tableRarity)
          .select()
          .gte(TableRarity.numberOfPlayers, 1)
          .order(TableRarity.name, ascending: true);

      return raritiesResponse;
    } catch (e, _) {
      rethrow;
    }
  }

  List<Rarity> mapRarities(List<dynamic> raritiesResponse) => raritiesResponse
      .map((json) => Rarity.fromMap(json as Map<String, dynamic>))
      .toList();
}
