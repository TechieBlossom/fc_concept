import 'package:cached_annotation/cached_annotation.dart';
import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/data/playstyles/table_play_style.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/play_styles/model/play_style.dart';
import 'package:core_domain/src/domain/play_styles/play_style_repository.dart';
import 'package:injectable/injectable.dart';

part 'play_style_repository_impl.cached.dart';

const _cacheTTL = 30 * 24 * 60 * 60; // 30 days

@Injectable(as: PlayStyleRepository)
@WithCache()
abstract mixin class PlayStyleRepositoryImpl
    implements PlayStyleRepository, _$PlayStyleRepositoryImpl {
  @factoryMethod
  factory PlayStyleRepositoryImpl() = _PlayStyleRepositoryImpl;

  @override
  Future<Result<List<PlayStyle>>> getAllPlayStyles() async {
    try {
      final rawResponse = await _getAllPlayStyles();
      final roles = mapPlayStyles(rawResponse);
      return Success(data: roles);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @PersistentCached(ttl: _cacheTTL)
  Future<List<dynamic>> _getAllPlayStyles() async {
    try {
      final playStylesResponse =
          await supabase.from(TablePlayStyle.tablePlayStyle).select();

      return playStylesResponse;
    } catch (e, _) {
      rethrow;
    }
  }

  List<PlayStyle> mapPlayStyles(List<dynamic> playStylesResponse) =>
      playStylesResponse
          .map((value) => PlayStyle.fromMap(value as Map<String, dynamic>))
          .toList();
}
