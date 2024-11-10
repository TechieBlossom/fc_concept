import 'package:core_api_client/api_client.dart';
import 'package:core_domain/domain.dart';
import 'package:core_domain/src/data/chemistry_style/table_chemistry_style.dart';
import 'package:core_domain/src/domain/chemistry_style/chemistry_style_repository.dart';
import 'package:injectable/injectable.dart';

part 'chemistry_style_repository_impl.cached.dart';

const _cacheTTL = 365 * 24 * 60 * 60; // 365 days

@Injectable(as: ChemistryStyleRepository)
@WithCache()
abstract mixin class ChemistryStyleRepositoryImpl
    implements ChemistryStyleRepository, _$ChemistryStyleRepositoryImpl {
  @factoryMethod
  factory ChemistryStyleRepositoryImpl() = _ChemistryStyleRepositoryImpl;

  @override
  Future<Result<List<ChemistryStyle>>> getAllChemistryStyles() async {
    try {
      final rawResponse = await _getAllChemistryStyles();
      final chemistryStyles = mapChemistryStyles(rawResponse);
      return Success(data: chemistryStyles);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @PersistentCached(ttl: _cacheTTL)
  Future<List<dynamic>> _getAllChemistryStyles() async {
    try {
      final chemistryStylesResponse = await supabase
          .from(TableChemistryStyle.tableChemistryStyle)
          .select()
          .order(TableChemistryStyle.name, ascending: true);

      return chemistryStylesResponse;
    } catch (e, _) {
      rethrow;
    }
  }

  List<ChemistryStyle> mapChemistryStyles(
    List<dynamic> chemistryStylesResponse,
  ) =>
      chemistryStylesResponse
          .map((json) => ChemistryStyle.fromMap(json as Map<String, dynamic>))
          .toList();
}
