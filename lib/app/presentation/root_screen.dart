import 'package:communication_client/feature/auth/presentation/auth_builder.dart';
import 'package:communication_client/feature/main/presentation/main_screen.dart';
import 'package:flutter/material.dart';

import '../../feature/auth/presentation/screen/login_screen.dart';
import 'components/app_loader.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBuilder(
      isUnauthorized: ((context) => const LoginScreen()),
      isAuthorized: ((context, value, child) => MainScreen(
            userEntity: value,
          )),
      isLading: ((context) => const AppLoader()),
    );
  }
}
