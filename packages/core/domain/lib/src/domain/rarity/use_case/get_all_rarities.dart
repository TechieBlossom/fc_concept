import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/rarity/model/rarity.dart';
import 'package:core_domain/src/domain/rarity/rarity_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllRarities {
  const GetAllRarities(this.clubRepository);

  final RarityRepository clubRepository;

  Future<Result<List<Rarity>>> call() async => clubRepository.getAllRarities();
}
