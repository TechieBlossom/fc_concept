import 'package:core_domain/src/domain/common/nested_filter_layout_type.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'nation_old.mapper.dart';

@Deprecated('Use Nation instead')
@MappableClass(discriminatorValue: 'nation')
class NationOld extends NestedFilterLayoutType with NationOldMappable {
  NationOld({
    required int id,
    required String name,
    this.isTop = false,
  }) : super(
          eaId: id,
          name: name,
        );

  final bool isTop;

  static const fromMap = NationOldMapper.fromMap;
}
