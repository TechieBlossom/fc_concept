import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/rarity/model/rarity.dart';

abstract class RarityRepository {
  Future<Result<List<Rarity>>> getAllRarities();
}
