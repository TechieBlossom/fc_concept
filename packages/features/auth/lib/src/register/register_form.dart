import 'package:core_design/design.dart';
import 'package:feature_auth/src/register/bloc/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
    required this.state,
  });

  final RegisterState state;

  @override
  Widget build(BuildContext context) {
    final registerBloc = context.read<RegisterBloc>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        InputField(
          order: InputFieldOrder.top,
          fieldType: FieldType.words,
          hint: 'Name',
          onChanged: (name) => registerBloc.add(NameUpdate(name)),
        ),
        InputField(
          order: InputFieldOrder.middle,
          fieldType: FieldType.email,
          hint: 'Email',
          onChanged: (email) => registerBloc.add(EmailUpdate(email)),
        ),
        InputField(
          order: InputFieldOrder.bottom,
          fieldType: FieldType.password,
          hint: 'Password',
          onChanged: (password) => registerBloc.add(PasswordUpdate(password)),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: AppSpacing.space6,
            bottom: AppSpacing.space5,
          ),
          child: PrimaryButton(
            text: 'Register',
            onPressed: state.isRegisterButtonEnabled
                ? () => registerBloc.add(const Register())
                : null,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.space2,
              ),
              child: Text(
                'Already an user?',
                style: context.typography.labelMedium.copyWith(),
              ),
            ),
            LinkButton(
              text: 'Sign In',
              onPressed: () => registerBloc.add(const AlreadyAUserTap()),
            ),
          ],
        ),
      ],
    );
  }
}
