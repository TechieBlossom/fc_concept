import 'package:core_domain/src/domain/roles/model/role.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetRolesByIdsUseCase {
  const GetRolesByIdsUseCase();

  List<Role> call({
    required List<Role> allRoles,
    required List<int> eaIds,
  }) =>
      allRoles.where((role) => eaIds.contains(role.eaId)).toList();
}
