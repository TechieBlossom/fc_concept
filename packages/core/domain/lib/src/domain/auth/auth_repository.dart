import 'package:core_domain/src/domain/auth/model/login_request_model.dart';
import 'package:core_domain/src/domain/auth/model/register_request_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRepository {
  Future<void> signUpUser({
    required RegisterRequestModel registerRequestModel,
  });

  Future<Session?> signInUser({
    required LoginRequestModel loginRequestModel,
  });

  Session? getSession();

  Stream<AuthState> observeAuthState();
}
