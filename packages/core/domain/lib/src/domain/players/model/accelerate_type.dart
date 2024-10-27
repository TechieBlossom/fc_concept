import 'package:dart_mappable/dart_mappable.dart';
import 'package:utility_extensions/extensions.dart';

part 'accelerate_type.mapper.dart';

@MappableEnum(caseStyle: CaseStyle.upperSnakeCase)
enum AccelerateType {
  explosive,
  mostlyExplosive,
  controlledExplosive,
  controlled,
  controlledLengthy,
  mostlyLengthy,
  lengthy;

  String get title => name
      .splitMapJoin(
        RegExp('(?<=[a-z])(?=[A-Z])'),
        onMatch: (m) => ' ',
      )
      .capitalizeEachWord();
}
