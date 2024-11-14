import 'package:core_analytics/analytics.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'role.mapper.dart';

@MappableClass()
class Role with RoleMappable, AnalyticsEventParameters {
  Role({
    required this.eaId,
    required this.name,
    required this.positionName,
    required this.isPlus,
    required this.isPlusPlus,
    required this.cleanName,
    required this.fullPositionName,
    required this.description,
  });

  final int eaId;
  final String name;
  final String positionName;
  final bool isPlus;
  final bool isPlusPlus;
  final String cleanName;
  final String fullPositionName;
  final String description;

  static const fromMap = RoleMapper.fromMap;

  @override
  Map<String, Object> get analyticsParameters => {'eaId': eaId, 'name': name};
}
