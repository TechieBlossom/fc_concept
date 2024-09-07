import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const InputField(
          order: InputFieldOrder.top,
          fieldType: FieldType.text,
          hint: 'Name',
        ),
        const InputField(
          order: InputFieldOrder.middle,
          fieldType: FieldType.email,
          hint: 'Email',
        ),
        const InputField(
          order: InputFieldOrder.bottom,
          fieldType: FieldType.password,
          hint: 'Password',
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
          onPressed: () {},
        ),
      ],
    );
  }
}
