import 'package:dart_mappable/dart_mappable.dart';

part 'position.mapper.dart';

@MappableClass()
class Position with PositionMappable {
  const Position({
    required this.eaId,
    required this.label,
    required this.shortLabel,
    required this.positionTypeId,
    required this.positionTypeName,
  });

  final int eaId;
  final String label;
  final String shortLabel;
  final String positionTypeId;
  final String positionTypeName;

  static const fromJson = PositionMapper.fromJson;
}
