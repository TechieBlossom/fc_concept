import 'dart:async';

import 'package:core_domain/auth.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_auth/src/navigation/navigator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

part 'auth_state_bloc.mapper.dart';
part 'auth_state_event.dart';
part 'auth_state_state.dart';

@injectable
class AuthStateBloc extends Bloc<AuthStateEvent, void> {
  AuthStateBloc(
    this._observeAuthStateUseCase,
    this._navigator,
  ) : super(const AuthStateState()) {
    on<Init>((_, emit) async => _onInit());
    on<SignedIn>((_, __) async => _onSignedIn());
    on<SignedOut>((_, __) async => _onSignedOut());

    add(Init());
  }

  final ObserveAuthStateUseCase _observeAuthStateUseCase;
  final AuthNavigator _navigator;

  StreamSubscription<AuthState>? _authStateSubscription;

  Future<void> _onInit() async {
    _observeAuthState();
  }

  void _observeAuthState() {
    _authStateSubscription = _observeAuthStateUseCase().listen(
      (data) async {
        final session = data.session;
        if (session != null) {
          add(SignedIn());
        } else {
          add(SignedOut());
        }
      },
      onError: (e) {},
    );
  }

  Future<void> _onSignedIn() async {
    await _navigator.goToHome();
  }

  Future<void> _onSignedOut() async {
    await _navigator.goToLogin();
  }

  @override
  Future<void> close() async {
    await _authStateSubscription?.cancel();
    return super.close();
  }
}
