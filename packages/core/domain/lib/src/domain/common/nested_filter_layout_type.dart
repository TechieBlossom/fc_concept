import 'package:dart_mappable/dart_mappable.dart';

part 'nested_filter_layout_type.mapper.dart';

@MappableClass(discriminatorKey: 'name')
abstract class NestedFilterLayoutType with NestedFilterLayoutTypeMappable {
  NestedFilterLayoutType({
    required this.id,
    required this.name,
  });

  final String name;
  final int id;
}
