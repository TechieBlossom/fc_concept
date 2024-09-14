import 'package:core_domain/src/domain/auth/auth_repository.dart';
import 'package:core_domain/src/domain/auth/model/login_request_model.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class LoginUserUseCase {
  const LoginUserUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<Result<Session?>> call({
    required LoginRequestModel loginRequestModel,
  }) async {
    try {
      final session = await _authRepository.signInUser(
        loginRequestModel: loginRequestModel,
      );
      return Success(data: session);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }
}
