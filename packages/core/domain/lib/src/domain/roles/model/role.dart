import 'package:dart_mappable/dart_mappable.dart';

part 'role.mapper.dart';

@MappableClass()
class Role with RoleMappable {
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
}
