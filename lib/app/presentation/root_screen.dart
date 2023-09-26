import 'package:communication_client/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:communication_client/feature/main/presentation/screen/main_screen.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      user: UserEntity(
        email: 'test@test.ru',
        userName: 'Username',
        firstname: 'Firstname',
      ),
      // userEntity: value,
    );

    // AuthBuilder(
    //   isUnauthorized: ((context) => const LoginScreen()),
    //   isAuthorized: ((context, value, child) => MainScreen(
    //         userEntity: value,
    //       )),
    //   isLading: ((context) => const AppLoader()),
    // );
  }
}
