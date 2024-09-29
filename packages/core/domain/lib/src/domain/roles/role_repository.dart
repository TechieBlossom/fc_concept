import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/roles/model/role.dart';

abstract class RoleRepository {
  Future<Result<List<Role>>> getAllRoles();
}
