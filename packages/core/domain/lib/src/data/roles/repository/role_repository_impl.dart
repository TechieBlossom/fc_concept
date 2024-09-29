import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/data/roles/table_role.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/roles/model/role.dart';
import 'package:core_domain/src/domain/roles/role_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: RoleRepository)
class RoleRepositoryImpl extends RoleRepository {
  @override
  Future<Result<List<Role>>> getAllRoles() async {
    try {
      final rolesResponse = await supabase
          .from(TableRole.tableRole)
          .select()
          .order(TableRole.eaId, ascending: false);

      final roles = mapRoles(rolesResponse);
      return Success(data: roles);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  List<Role> mapRoles(List<Map<String, dynamic>> rolesResponse) =>
      rolesResponse.map(Role.fromMap).toList();
}
