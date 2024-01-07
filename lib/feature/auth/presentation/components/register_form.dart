import 'package:communication_client/app/presentation/components/app_button.dart';
import 'package:communication_client/app/presentation/components/app_text_field.dart';
import 'package:communication_client/app/utils/utils.dart';
import 'package:communication_client/feature/auth/domain/state/auth_state/auth_bloc.dart';
import 'package:communication_client/feature/auth/domain/state/regisrer_state/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _userNameController = TextEditingController();

  final _emailController = TextEditingController();

  final _passwordFirstController = TextEditingController();

  final _passwordSecondController = TextEditingController();

  @override
  void initState() {
    _userNameController.addListener(() {
      context
          .read<RegisterBloc>()
          .add(RegisterEvent.changeFirstName(_userNameController.text));
    });
    _emailController.addListener(() {
      context
          .read<RegisterBloc>()
          .add(RegisterEvent.changeEmail(_emailController.text));
    });
    _passwordFirstController.addListener(() {
      context.read<RegisterBloc>().add(
          RegisterEvent.changePasswordFirst(_passwordFirstController.text));
    });
    _passwordSecondController.addListener(() {
      context.read<RegisterBloc>().add(
          RegisterEvent.changePasswordSecond(_passwordSecondController.text));
    });
    super.initState();
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _passwordFirstController.dispose();
    _passwordSecondController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<RegisterBloc, RegisterState>(
            buildWhen: (previous, current) =>
                previous.firstName?.value != current.firstName?.value ||
                previous.firstName?.errorMessage !=
                    current.firstName?.errorMessage,
            builder: (context, state) {
              return Focus(
                onFocusChange: ((hasFocus) {
                  if (!hasFocus) {
                    context
                        .read<RegisterBloc>()
                        .add(const RegisterEvent.unfocusFirstName());
                  }
                }),
                child: AppTextField(
                  controller: _userNameController,
                  labelText: 'Логин',
                  icon: Icons.person,
                  errorText: state.firstName?.errorMessage,
                ),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<RegisterBloc, RegisterState>(
            buildWhen: (previous, current) =>
                previous.email?.value != current.email?.value ||
                previous.email?.errorMessage != current.email?.errorMessage,
            builder: (context, state) {
              return Focus(
                onFocusChange: ((hasFocus) {
                  if (!hasFocus) {
                    context
                        .read<RegisterBloc>()
                        .add(const RegisterEvent.unfocusEmail());
                  }
                }),
                child: AppTextField(
                  controller: _emailController,
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
          BlocBuilder<RegisterBloc, RegisterState>(
            buildWhen: (previous, current) =>
                previous.passwordFirst?.value != current.passwordFirst?.value ||
                previous.passwordFirst?.errorMessage !=
                    current.passwordFirst?.errorMessage,
            builder: (context, state) {
              return Focus(
                onFocusChange: ((hasFocus) {
                  if (!hasFocus) {
                    context
                        .read<RegisterBloc>()
                        .add(const RegisterEvent.unfocusPasswordFirst());
                  }
                }),
                child: AppTextField(
                  isObscure: true,
                  controller: _passwordFirstController,
                  labelText: 'Пароль',
                  icon: Icons.lock,
                  errorText: state.passwordFirst?.errorMessage,
                ),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<RegisterBloc, RegisterState>(
            buildWhen: (previous, current) =>
                previous.passwordSecond?.value !=
                    current.passwordSecond?.value ||
                previous.passwordSecond?.errorMessage !=
                    current.passwordSecond?.errorMessage,
            builder: (context, state) {
              return AppTextField(
                isObscure: true,
                controller: _passwordSecondController,
                labelText: 'Подтверждение пароля',
                icon: Icons.lock,
                errorText: state.passwordSecond?.errorMessage,
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 3),
                child: Text('Уже зарегестрирован? '),
              ),
              const SizedBox(
                width: 5,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Авторизация'),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 20,
          ),
          BlocConsumer<RegisterBloc, RegisterState>(
            listener: (context, state) {
              if (state.isFormValid) {
                context.read<AuthBloc>().add(
                      AuthEvent.signUp(
                        username: state.firstName?.value ?? '',
                        email: state.email?.value ?? '',
                        password: state.passwordSecond?.value ?? '',
                      ),
                    );
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
                'email: ${state.firstName?.errorMessage}',
              );
              Utils.printWhite(
                'email: ${state.email?.errorMessage}',
              );
              Utils.printWhite(
                'password: ${state.passwordFirst?.errorMessage}',
              );
              Utils.printWhite(
                'password: ${state.passwordSecond?.errorMessage}',
              );
              return AppButton(
                text: 'Вход',
                onPressed: () {
                  context
                      .read<RegisterBloc>()
                      .add(const RegisterEvent.formSubmit());
                },
                isActive: true,
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
