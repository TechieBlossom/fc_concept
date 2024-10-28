import 'package:core_domain/src/domain/chemistry_style/model/chemistry_style.dart';
import 'package:core_domain/src/domain/models/result.dart';

abstract class ChemistryStyleRepository {
  Future<Result<List<ChemistryStyle>>> getAllChemistryStyles();
}
