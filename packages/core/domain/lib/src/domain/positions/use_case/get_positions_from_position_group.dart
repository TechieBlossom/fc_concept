import 'package:core_domain/src/domain/positions/model/position.dart';
import 'package:core_domain/src/domain/positions/model/position_group.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetPositionsFromPositionGroup {
  List<Position> call(
    List<Position> allPositions,
    PositionGroup positionGroup,
  ) {
    return allPositions.where(
      (position) {
        return position.positionTypeName == positionGroup.toPositionTypeName();
      },
    ).toList();
  }
}
