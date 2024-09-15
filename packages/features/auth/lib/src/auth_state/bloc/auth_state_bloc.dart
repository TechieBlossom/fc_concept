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
class AuthStateBloc extends Bloc<AuthStateEvent, AuthStateState> {
  AuthStateBloc(
    this._observeAuthStateUseCase,
    this._navigator,
  ) : super(const AuthStateState()) {
    on<Init>((_, emit) async => _onInit(emit));
    on<SignedIn>((_, __) async => _onSignedIn());
    on<SignedOut>((_, __) async => _onSignedOut());

    add(Init());
  }

  final ObserveAuthStateUseCase _observeAuthStateUseCase;
  final AuthNavigator _navigator;

  StreamSubscription<AuthState>? _authStateSubscription;

  Future<void> _onInit(Emitter<AuthStateState> emit) async {
    _observeAuthState(emit);
  }

  void _observeAuthState(Emitter<AuthStateState> emit) {
    _authStateSubscription = _observeAuthStateUseCase().listen(
      (data) async {
        final session = data.session;
        final event = data.event;
        if (session != null) {
          if (event != AuthChangeEvent.tokenRefreshed) {
            emit(state.copyWith(session: session));
            add(SignedIn());
          }
        }

        if (event == AuthChangeEvent.signedOut) {
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
