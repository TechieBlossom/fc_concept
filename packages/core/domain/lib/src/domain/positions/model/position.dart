import 'package:core_analytics/analytics.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'position.mapper.dart';

@MappableClass()
class Position with PositionMappable, AnalyticsEventParameters {
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

  static const fromMap = PositionMapper.fromMap;

  @override
  Map<String, Object> get analyticsParameters => {
        'id': eaId,
        'name': shortLabel,
      };
}
