import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/play_styles/model/play_style.dart';

abstract class PlayStyleRepository {
  Future<Result<List<PlayStyle>>> getAllPlayStyles();
}
