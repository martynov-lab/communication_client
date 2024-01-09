import 'package:communication_client/app/utils/utils.dart';
import 'package:communication_client/feature/auth/domain/state/auth_state/auth_bloc.dart';
import 'package:communication_client/feature/auth/domain/state/login_state/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:communication_client/app/presentation/components/app_button.dart';
import 'package:communication_client/app/presentation/components/app_text_field.dart';
import 'package:communication_client/feature/auth/presentation/screen/register_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _userEmailController = TextEditingController(text: 'test@test.com');
  //text: 'test@test.com'
  final _passwordController = TextEditingController(text: 'test123');
  //text: 'test123'

  @override
  void initState() {
    _userEmailController.addListener(() {
      context
          .read<LoginBloc>()
          .add(LoginEvent.changeEmail(_userEmailController.text));
    });
    _passwordController.addListener(() {
      context
          .read<LoginBloc>()
          .add(LoginEvent.changePassword(_passwordController.text));
    });
    super.initState();
  }

  @override
  void dispose() {
    _userEmailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 40,
          ),
          BlocBuilder<LoginBloc, LoginState>(
            buildWhen: (previous, current) =>
                previous.email?.value != current.email?.value ||
                previous.email?.errorMessage != current.email?.errorMessage,
            builder: (context, state) {
              return Focus(
                onFocusChange: ((hasFocus) {
                  if (!hasFocus) {
                    context
                        .read<LoginBloc>()
                        .add(const LoginEvent.unfocusEmail());
                  }
                }),
                child: AppTextField(
                  controller: _userEmailController,
                  labelText: 'Email',
                  icon: Icons.email,
                  errorText: state.email?.errorMessage,
                ),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<LoginBloc, LoginState>(
            buildWhen: (previous, current) =>
                previous.password?.value != current.password?.value ||
                previous.password?.errorMessage !=
                    current.password?.errorMessage,
            builder: (context, state) {
              return Focus(
                onFocusChange: ((hasFocus) {
                  if (!hasFocus) {
                    context
                        .read<LoginBloc>()
                        .add(const LoginEvent.unfocusPassword());
                  }
                }),
                child: AppTextField(
                  isObscure: true,
                  controller: _passwordController,
                  labelText: 'Пароль',
                  icon: Icons.lock,
                  errorText: state.password?.errorMessage,
                ),
              );
            },
          ),
          // const SizedBox(
          //   height: 2,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 3),
                child: Text('Еще не зарегестрирован? '),
              ),
              const SizedBox(
                width: 5,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => const RegisterScreen())));
                },
                child: const Text('Регистрация'),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              if (state.isFormValid) {
                context.read<AuthBloc>().add(AuthEvent.signIn(
                    email: state.email?.value ?? '',
                    password: state.password?.value ?? ''));
              }
            },
            buildWhen: (previous, current) =>
                previous.isFormValid != current.isFormValid,
            builder: (context, state) {
              Utils.printGreen(
                'State bloc: ',
              );
              Utils.printWhite(
                'formValid: ${state.isFormValid}',
              );
              Utils.printWhite(
                'email: ${state.email?.errorMessage}',
              );
              Utils.printWhite(
                'password: ${state.password?.errorMessage}',
              );
              return AppButton(
                text: 'Вход',
                onPressed: () {
                  context.read<LoginBloc>().add(const LoginEvent.formSubmit());
                },
                isActive: true, //state.isFormValid,
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
