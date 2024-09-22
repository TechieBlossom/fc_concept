import 'package:core_domain/src/domain/common/nested_filter_layout_type.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'nation.mapper.dart';

@MappableClass(discriminatorValue: 'nation')
class Nation extends NestedFilterLayoutType with NationMappable {
  Nation({
    required int eaId,
    required String name,
    this.imagePath,
  }) : super(
          eaId: eaId,
          name: name,
        );

  final String? imagePath;

  static const fromMap = NationMapper.fromMap;
}
