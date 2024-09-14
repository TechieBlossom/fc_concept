import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/domain/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SetSessionUseCase {
  SetSessionUseCase(this.authRepository);

  final AuthRepository authRepository;

  Future<void> call(String refreshToken) async =>
      supabase.auth.setSession(refreshToken);
}
