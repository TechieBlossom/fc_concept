import 'package:core_domain/src/domain/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class ObserveAuthStateUseCase {
  const ObserveAuthStateUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Stream<AuthState> call() {
    return _authRepository.observeAuthState();
  }

}