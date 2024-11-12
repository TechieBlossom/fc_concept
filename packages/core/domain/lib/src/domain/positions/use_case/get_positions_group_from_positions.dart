import 'package:collection/collection.dart';
import 'package:core_domain/src/domain/positions/model/position.dart';
import 'package:core_domain/src/domain/positions/model/position_group.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetPositionGroupFromPositions {
  List<PositionGroup> call(
    List<Position> allPositions,
    List<Position> positions,
  ) {
    final groups = positions.groupListsBy(
      (position) => position.positionTypeName,
    );
    final positionGroups = List<PositionGroup>.empty(growable: true);
    if (groups.containsKey('Attack') && groups['Attack']!.length == 3) {
      positionGroups.add(const Forwards());
    }
    if (groups.containsKey('Midfielder') && groups['Midfielder']!.length == 5) {
      positionGroups.add(const Midfielders());
    }

    if (groups.containsKey('Defence') && groups['Defence']!.length == 4) {
      positionGroups.add(const Defenders());
    }
    return positionGroups;
  }
}
