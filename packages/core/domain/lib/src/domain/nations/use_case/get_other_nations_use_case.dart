import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/nations/model/nation.dart';
import 'package:core_domain/src/domain/nations/nation_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetOtherNationsUseCase {
  const GetOtherNationsUseCase(this.nationRepository);

  final NationRepository nationRepository;

  Future<Result<List<Nation>>> call() async =>
      nationRepository.getOtherNations();
}
