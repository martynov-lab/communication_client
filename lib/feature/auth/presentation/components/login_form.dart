import 'package:communication_client/feature/auth/domain/auth_state/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/presentation/components/app_button.dart';
import '../../../../app/presentation/components/app_text_field.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);

  final _userNameController = TextEditingController(text: 'ivanov');
  final _passwordController = TextEditingController(text: '123456');
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
          Padding(
            padding: const EdgeInsets.only(bottom: 20, top: 40),
            child: AppTextField(
              controller: _userNameController,
              labelText: 'Логин',
              icon: Icons.person,
            ),

            // input(context, const Icon(Icons.person), 'Логин',
            //     _userNameController, false),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: AppTextField(
              controller: _passwordController,
              labelText: 'Пароль',
              icon: Icons.person,
            ),

            // inputPassword(
            //     const Icon(Icons.lock), 'Пароль', _passwordController),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: AppButton(
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
                ),
              ],
            ),
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
