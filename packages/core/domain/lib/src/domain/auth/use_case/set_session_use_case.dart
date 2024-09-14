import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/domain/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class GetSessionUseCase {
  GetSessionUseCase(this.authRepository);

  final AuthRepository authRepository;

  Session? call() => supabase.auth.currentSession;

}
