import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/data/playstyles/table_play_style.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/play_styles/model/play_style.dart';
import 'package:core_domain/src/domain/play_styles/play_style_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PlayStyleRepository)
class PlayStyleRepositoryImpl extends PlayStyleRepository {
  @override
  Future<Result<List<PlayStyle>>> getAllPlayStyles() async {
    try {
      final playStylesResponse =
          await supabase.from(TablePlayStyle.tablePlayStyle).select();

      final roles = mapPlayStyles(playStylesResponse);
      return Success(data: roles);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  List<PlayStyle> mapPlayStyles(
    List<Map<String, dynamic>> playStylesResponse,
  ) =>
      playStylesResponse.map(PlayStyle.fromMap).toList();
}
