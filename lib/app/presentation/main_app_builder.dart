import 'package:communication_client/app/di/init_di.dart';
import 'package:communication_client/app/domain/app_builder.dart';
import 'package:communication_client/feature/auth/domain/auth_repository.dart';
import 'package:communication_client/feature/auth/domain/auth_state/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'root_screen.dart';

class MainAppBuilder implements AppBuilder {
  @override
  Widget buildApp() {
    return const _GlobalProviders(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RootScreen(),
      ),
    );
  }
}

class _GlobalProviders extends StatelessWidget {
  final Widget child;
  const _GlobalProviders({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: ((context) => AuthCubit(locator<AuthRepository>())))
      ],
      child: child,
    );
  }
}
