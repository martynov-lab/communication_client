import 'package:communication_client/feature/auth/domain/auth_state/auth_cubit.dart';
import 'package:communication_client/feature/auth/presentation/screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/presentation/components/app_button.dart';
import '../../../../app/presentation/components/app_text_field.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);

  final _userNameController = TextEditingController(text: 'test1');
  final _passwordController = TextEditingController(text: '123456Aa');
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
            height: 40,
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
            isObscure: true,
            controller: _passwordController,
            labelText: 'Пароль',
            icon: Icons.lock,
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
          AppButton(
            text: 'Вход',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                isLoginButtonEnabled
                    ? _onFormSubmitted(context.read<AuthCubit>())
                    : null;
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

  void _onFormSubmitted(AuthCubit authCubit) {
    authCubit.signIn(
      username: _userNameController.text,
      password: _passwordController.text,
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
