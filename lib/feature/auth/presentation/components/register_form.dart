import 'package:communication_client/feature/auth/domain/state/auth_state/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/presentation/components/app_button.dart';
import '../../../../app/presentation/components/app_snackbar/top_snack_bar.dart';
import '../../../../app/presentation/components/app_text_field.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm({super.key});

  final _userNameController = TextEditingController(text: 'ivanov');
  final _emailController = TextEditingController(text: 'ivanov');
  final _passwordController = TextEditingController(text: '123456');
  final _password2Controller = TextEditingController(text: '123456');
  final _formKey = GlobalKey<FormState>();
  // late LoginBloc _loginBloc;
  // late AuthenticationBloc _authenticationBloc;

  // bool _obscurePassword = true;

  bool get isLoginButtonEnabled =>
      _userNameController.text.isNotEmpty &&
      _passwordController.text.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          AppTextField(
            controller: _userNameController,
            labelText: 'Логин',
            icon: Icons.person,
          ),
          const SizedBox(
            height: 20,
          ),
          AppTextField(
            controller: _emailController,
            labelText: 'Email',
            icon: Icons.email,
          ),
          const SizedBox(
            height: 20,
          ),
          AppTextField(
            isObscure: true,
            controller: _passwordController,
            labelText: 'Пароль',
            icon: Icons.lock,
          ),
          const SizedBox(
            height: 20,
          ),
          AppTextField(
            isObscure: true,
            controller: _password2Controller,
            labelText: 'Подтверждение пароля',
            icon: Icons.lock,
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
          AppButton(
            text: 'Вход',
            onPressed: () {
              if (_formKey.currentState?.validate() != true) return;
              if (_passwordController.text != _password2Controller.text) {
                showTopSnackBar(
                  context,
                  CustomSnackBar.error(
                    message: 'Пароли не совпадают',
                    button: GestureDetector(
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                      onTap: () => localAnimationController.reverse(),
                    ),
                  ),
                  //persistent: true,
                  onAnimationControllerInit: (controller) =>
                      localAnimationController = controller,
                );
              } else {
                isLoginButtonEnabled
                    ? _onFormSubmitted(context.read<AuthBloc>())
                    : null;
                Navigator.of(context).pop();
              }
            },
            isActive: true,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  // void _toggle() {
  //   setState(() {
  //     _obscurePassword = !_obscurePassword;
  //   });
  // }

  void _onFormSubmitted(AuthBloc authBloc) {
    authBloc.add(
      AuthEvent.signUp(
          username: _userNameController.text,
          email: _emailController.text,
          password: _passwordController.text),
    );
    // _loginBloc.add(
    //   LoginButtonPressed(
    //     username: _userNameController.text,
    //     password: _passwordController.text,
    //   ),
    // );
    //FocusScope.of(context).requestFocus(FocusNode());
  }

  // @override
  // void dispose() {
  //   _userNameController.dispose();
  //   _passwordController.dispose();
  //   super.dispose();
  // }
}
