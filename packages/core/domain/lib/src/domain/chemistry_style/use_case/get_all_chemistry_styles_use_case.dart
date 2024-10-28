import 'package:core_domain/domain.dart';
import 'package:core_domain/src/domain/chemistry_style/chemistry_style_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllChemistryStyles {
  const GetAllChemistryStyles(this.chemistryStyleRepository);

  final ChemistryStyleRepository chemistryStyleRepository;

  Future<Result<List<ChemistryStyle>>> call() async {
    return chemistryStyleRepository.getAllChemistryStyles();
  }
}
