import 'package:core_domain/domain.dart';
import 'package:core_domain/src/domain/rarity/rarity_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllRarities {
  const GetAllRarities(this.rarityRepository);

  final RarityRepository rarityRepository;

  Future<Result<List<Rarity>>> call() async => rarityRepository.getAllRarities(
        rarityIds: rarityColorMap.keys.toList(),
      );
}
