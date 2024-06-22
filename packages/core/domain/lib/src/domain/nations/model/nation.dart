import 'package:core_domain/src/domain/common/nested_filter_layout_type.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'nation.mapper.dart';

@MappableClass(discriminatorValue: 'nation')
class Nation extends NestedFilterLayoutType with NationMappable {
  Nation({
    required int id,
    required String name,
    required this.isTop,
  }) : super(id: id, name: name,);

  final bool isTop;

  static const fromMap = NationMapper.fromMap;
}
