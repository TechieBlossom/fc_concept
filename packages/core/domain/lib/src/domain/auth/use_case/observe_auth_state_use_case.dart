import 'package:core_domain/src/domain/auth/auth_repository.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class GetUserSessionUseCase {
  const GetUserSessionUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Stream<AuthState> call() async {
    try {
      final response = _authRepository.getSessionUser();
      return Success(data: response);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

}