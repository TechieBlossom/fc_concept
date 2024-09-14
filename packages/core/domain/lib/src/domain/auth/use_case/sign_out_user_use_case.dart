import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/domain/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignOutUserUseCase {
  SignOutUserUseCase(this.authRepository);

  final AuthRepository authRepository;

  Future<void> call() async => supabase.auth.signOut();
}
