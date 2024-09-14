import 'package:core_domain/src/domain/auth/auth_repository.dart';
import 'package:core_domain/src/domain/auth/model/register_request_model.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterUserUseCase {
  const RegisterUserUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<Result<void>> call({
    required RegisterRequestModel registerRequestModel,
  }) async {
    try {
      final response = _authRepository.signUpUser(
        registerRequestModel: registerRequestModel,
      );
      return Success(data: response);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }
}
