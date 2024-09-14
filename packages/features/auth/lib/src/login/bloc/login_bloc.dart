import 'package:core_domain/auth.dart';
import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_auth/src/navigation/navigator.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.mapper.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(
    this._navigator,
    this._loginUserUseCase,
  ) : super(const LoginState()) {
    on<CreateAccountTap>((_, emit) => _onCreateAccountTap(emit));
    on<SignInTap>((_, emit) => _onSignInTap(emit));
    on<EmailUpdate>((event, emit) => _onEmailUpdate(event, emit));
    on<PasswordUpdate>((event, emit) => _onPasswordUpdate(event, emit));
  }

  final AuthNavigator _navigator;
  final LoginUserUseCase _loginUserUseCase;

  void _onEmailUpdate(
    EmailUpdate event,
    Emitter<LoginState> emit,
  ) {
    final disableSignInButton =
        event.email.isEmpty || (state.password?.isEmpty ?? true);
    emit(
      state.copyWith(
        email: event.email,
        isSignButtonEnabled: !disableSignInButton,
      ),
    );
  }

  void _onPasswordUpdate(
    PasswordUpdate event,
    Emitter<LoginState> emit,
  ) {
    final disableSignInButton =
        event.password.isEmpty || (state.email?.isEmpty ?? true);
    emit(
      state.copyWith(
        password: event.password,
        isSignButtonEnabled: !disableSignInButton,
      ),
    );
  }

  Future<void> _onCreateAccountTap(Emitter<LoginState> emit) async =>
      _navigator.goToRegister(
        email: state.email,
      );

  Future<void> _onSignInTap(Emitter<LoginState> emit) async {
    if (state.email != null && state.password != null) {
      await _loginUserUseCase(
        loginRequestModel: LoginRequestModel(
          email: state.email!,
          password: state.password!,
        ),
      );
      // switch (response) {
      //   case Success(data: final session): {
      //     await _navigator.goToHome();
      //   }
      //   case Failure(exception: final exception): print(exception);
      // }
    }
  }
}
