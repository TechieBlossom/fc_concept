import 'package:core_domain/src/domain/positions/model/position.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPositionsByIdsUseCase {
  const GetPositionsByIdsUseCase();

  List<Position> call({
    required List<Position> allPositions,
    required List<int> eaIds,
  }) =>
      allPositions.where((position) => eaIds.contains(position.eaId)).toList();
}
