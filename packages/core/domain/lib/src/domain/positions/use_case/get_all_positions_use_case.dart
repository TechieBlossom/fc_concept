import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/positions/model/position.dart';
import 'package:core_domain/src/domain/positions/position_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllPositionsUseCase {
  const GetAllPositionsUseCase(this.positionRepository);

  final PositionRepository positionRepository;

  Future<Result<List<Position>>> call() async =>
      positionRepository.getAllPositions();
}
