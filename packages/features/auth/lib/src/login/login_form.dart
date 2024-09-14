import 'package:core_design/design.dart';
import 'package:feature_auth/src/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.state,
  });

  final LoginState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        InputField(
          order: InputFieldOrder.top,
          fieldType: FieldType.email,
          hint: 'sharma.prateek1712@gmail.com',
          onChanged: (value) => context.read<LoginBloc>().add(
                EmailUpdate(value),
              ),
        ),
        InputField(
          order: InputFieldOrder.bottom,
          fieldType: FieldType.password,
          hint: 'Ganesha1712!@#',
          onChanged: (value) => context.read<LoginBloc>().add(
                PasswordUpdate(value),
              ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.space5),
          child: LinkButton(
            text: 'Forgot password?',
            onPressed: () {},
          ),
        ),
        PrimaryButton(
          text: 'Sign In',
          onPressed: state.isSignButtonEnabled
              ? () {
                  context.read<LoginBloc>().add(const SignInTap());
                }
              : null,
        ),
      ],
    );
  }
}
