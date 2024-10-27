import 'package:dart_mappable/dart_mappable.dart';

part 'play_style_category.mapper.dart';

@MappableEnum()
enum PlayStyleCategory {
  @MappableValue(1)
  scoring,
  @MappableValue(2)
  passing,
  @MappableValue(3)
  ballControl,
  @MappableValue(4)
  defending,
  @MappableValue(5)
  physical,
  @MappableValue(6)
  goalKeeping;

  String get titleCase {
    switch (this) {
      case PlayStyleCategory.scoring:
        return 'Scoring';
      case PlayStyleCategory.passing:
        return 'Passing';
      case PlayStyleCategory.ballControl:
        return 'Ball Control';
      case PlayStyleCategory.defending:
        return 'Defending';
      case PlayStyleCategory.physical:
        return 'Physical';
      case PlayStyleCategory.goalKeeping:
        return 'Goal Keeping';
    }
  }
}
