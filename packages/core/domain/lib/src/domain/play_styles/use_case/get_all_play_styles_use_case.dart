import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/play_styles/model/play_style.dart';
import 'package:core_domain/src/domain/play_styles/play_style_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllPlayStylesUseCase {
  const GetAllPlayStylesUseCase(this.playStyleRepository);

  final PlayStyleRepository playStyleRepository;

  Future<Result<List<PlayStyle>>> call() async =>
      playStyleRepository.getAllPlayStyles();
}
