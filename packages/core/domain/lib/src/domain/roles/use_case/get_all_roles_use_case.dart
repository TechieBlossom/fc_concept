import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/roles/model/role.dart';
import 'package:core_domain/src/domain/roles/role_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllRolesUseCase {
  const GetAllRolesUseCase(this.roleRepository);

  final RoleRepository roleRepository;

  Future<Result<List<Role>>> call() async => roleRepository.getAllRoles();
}
