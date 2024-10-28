import 'package:core_api_client/api_client.dart';
import 'package:core_domain/domain.dart';
import 'package:core_domain/src/data/chemistry_style/table_chemistry_style.dart';
import 'package:core_domain/src/data/rarity_squads/table_rarity_squad.dart';
import 'package:core_domain/src/domain/chemistry_style/chemistry_style_repository.dart';
import 'package:core_domain/src/domain/chemistry_style/model/chemistry_style.dart';
import 'package:core_domain/src/domain/rarity_squads/rarity_squad_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ChemistryStyleRepository)
class ChemistryStyleRepositoryImpl extends ChemistryStyleRepository {
  @override
  Future<Result<List<ChemistryStyle>>> getAllChemistryStyles() async {
    try {
      final chemistryStylesResponse = await supabase
          .from(TableChemistryStyle.tableChemistryStyle)
          .select()
          .order(TableChemistryStyle.name, ascending: true);

      final chemistryStyles = mapChemistryStyles(chemistryStylesResponse);
      return Success(data: chemistryStyles);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  List<ChemistryStyle> mapChemistryStyles(
    List<Map<String, dynamic>> chemistryStylesResponse,
  ) =>
      chemistryStylesResponse
          .map((json) => ChemistryStyle.fromMap(json))
          .toList();
}
