import 'package:dart_mappable/dart_mappable.dart';

part 'accelerate_types.mapper.dart';

@MappableClass()
class AccelerateTypes with AccelerateTypesMappable {
  const AccelerateTypes({
    required this.lengthy,
    required this.explosive,
    required this.controlled,
    required this.mostlyLengthy,
    required this.mostlyExplosive,
    required this.controlledLengthy,
    required this.controlledExplosive,
  });

  final List<String> lengthy;
  final List<String> explosive;
  final List<String> controlled;
  final List<String> mostlyLengthy;
  final List<String> mostlyExplosive;
  final List<String> controlledLengthy;
  final List<String> controlledExplosive;
}
