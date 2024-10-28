import 'package:core_domain/auth.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_auth/src/navigation/navigator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'register_bloc.mapper.dart';
part 'register_event.dart';
part 'register_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(
    this._navigator,
    this._registerUserUseCase,
  ) : super(const RegisterState()) {
    on<Register>((_, emit) => _onCreateAccountTap(emit));
    on<AlreadyAUserTap>((_, emit) => _onSignInTap(emit));
    on<NameUpdate>((event, emit) => _onNameUpdate(event, emit));
    on<EmailUpdate>((event, emit) => _onEmailUpdate(event, emit));
    on<PasswordUpdate>((event, emit) => _onPasswordUpdate(event, emit));
  }

  final AuthNavigator _navigator;
  final RegisterUserUseCase _registerUserUseCase;

  void _onEmailUpdate(
    EmailUpdate event,
    Emitter<RegisterState> emit,
  ) {
    final disableSignInButton = event.email.isEmpty ||
        (state.password?.isEmpty ?? true) ||
        (state.name?.isEmpty ?? true);
    emit(
      state.copyWith(
        email: event.email,
        isRegisterButtonEnabled: !disableSignInButton,
      ),
    );
  }

  void _onPasswordUpdate(
    PasswordUpdate event,
    Emitter<RegisterState> emit,
  ) {
    final disableSignInButton = event.password.isEmpty ||
        (state.email?.isEmpty ?? true) ||
        (state.name?.isEmpty ?? true);
    emit(
      state.copyWith(
        password: event.password,
        isRegisterButtonEnabled: !disableSignInButton,
      ),
    );
  }

  void _onNameUpdate(
    NameUpdate event,
    Emitter<RegisterState> emit,
  ) {
    final disableSignInButton = event.name.isEmpty ||
        (state.email?.isEmpty ?? true) ||
        (state.password?.isEmpty ?? true);
    emit(
      state.copyWith(
        name: event.name,
        isRegisterButtonEnabled: !disableSignInButton,
      ),
    );
  }

  Future<void> _onCreateAccountTap(Emitter<RegisterState> emit) async {
    if (state.email != null && state.password != null && state.name != null) {
      await _registerUserUseCase(
        registerRequestModel: RegisterRequestModel(
          name: state.name!,
          email: state.email!,
          password: state.password!,
        ),
      );
    }
  }

  Future<void> _onSignInTap(Emitter<RegisterState> emit) =>
      _navigator.goToLogin(
        email: state.email,
      );
}
