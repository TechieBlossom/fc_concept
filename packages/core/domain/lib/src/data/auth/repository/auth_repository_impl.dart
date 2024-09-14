import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/domain/auth/auth_repository.dart';
import 'package:core_domain/src/domain/auth/model/login_request_model.dart';
import 'package:core_domain/src/domain/auth/model/register_request_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<void> signUpUser({
    required RegisterRequestModel registerRequestModel,
  }) async {
    await supabase.auth.signUp(
      data: {
        'name': registerRequestModel.name,
      },
      email: registerRequestModel.email,
      password: registerRequestModel.password,
    );
  }

  @override
  Future<Session?> signInUser({
    required LoginRequestModel loginRequestModel,
  }) async {
    final response = await supabase.auth.signInWithPassword(
      email: loginRequestModel.email,
      password: loginRequestModel.password,
    );
    return response.session;
  }

  @override
  Stream<AuthState> observeAuthState() => supabase.auth.onAuthStateChange;

  @override
  Session? getSession() => supabase.auth.currentSession;
}
