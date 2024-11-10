import 'package:cached_annotation/cached_annotation.dart';
import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/data/roles/table_role.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/roles/model/role.dart';
import 'package:core_domain/src/domain/roles/role_repository.dart';
import 'package:injectable/injectable.dart';

part 'role_repository_impl.cached.dart';

const _cacheTTL = 30 * 24 * 60 * 60; // 30 days

@Injectable(as: RoleRepository)
@WithCache()
abstract mixin class RoleRepositoryImpl
    implements RoleRepository, _$RoleRepositoryImpl {
  @factoryMethod
  factory RoleRepositoryImpl() = _RoleRepositoryImpl;

  @override
  Future<Result<List<Role>>> getAllRoles() async {
    try {
      final rawResponse = await _getAllRoles();
      final roles = mapRoles(rawResponse);
      return Success(data: roles);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @PersistentCached(ttl: _cacheTTL)
  Future<List<dynamic>> _getAllRoles() async {
    try {
      final rolesResponse = await supabase
          .from(TableRole.tableRole)
          .select()
          .order(TableRole.eaId, ascending: false);

      return rolesResponse;
    } catch (e, _) {
      rethrow;
    }
  }

  List<Role> mapRoles(List<dynamic> rolesResponse) => rolesResponse
      .map((value) => Role.fromMap(value as Map<String, dynamic>))
      .toList();
}
