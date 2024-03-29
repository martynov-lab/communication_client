import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:communication_client/app/di/init_di.dart';
import 'package:communication_client/app/domain/app_builder.dart';
import 'package:communication_client/app/utils/config/theme/app_theme.dart';
import 'package:communication_client/feature/auth/domain/auth_repository.dart';
import 'package:communication_client/feature/auth/domain/state/auth_state/auth_bloc.dart';
import 'package:communication_client/feature/main/domain/repository/video_room_repository.dart';
import 'package:communication_client/feature/main/domain/state/video_room_bloc/video_room_bloc.dart';

import 'root_screen.dart';

class MainAppBuilder implements AppBuilder {
  @override
  Widget buildApp() {
    return _GlobalProviders(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().themeLight,
        home: const RootScreen(),
      ),
    );
  }
}

class _GlobalProviders extends StatelessWidget {
  final Widget child;
  const _GlobalProviders({required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(locator.get<AuthRepository>()),
        ),
        BlocProvider(
          create: (context) =>
              VideoRoomBloc(locator.get<VideoRoomRepository>()),
        ),
      ],
      child: child,
    );
  }
}
