import 'package:dart_mappable/dart_mappable.dart';

part 'position_group.mapper.dart';

@MappableEnum(caseStyle: CaseStyle.pascalCase)
enum PositionGroup {
  attack,
  midfielder,
  defence,
}
