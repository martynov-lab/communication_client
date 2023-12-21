import 'package:communication_client/app/utils/transition/fade_transition.dart';
import 'package:communication_client/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:communication_client/feature/main/domain/state/bloc_deep_link.dart';
import 'package:communication_client/feature/main/domain/state/video_room_bloc/video_room_bloc.dart';
import 'package:communication_client/feature/main/presentation/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<DeepLinkBloc>(
      create: (context) => DeepLinkBloc(),
      dispose: (context, bloc) => bloc.dispose(),
      builder: (context, child) => const _RootScreen(),
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

class _RootScreen extends StatelessWidget {
  const _RootScreen();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: context.read<DeepLinkBloc>().state,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          context
              .read<VideoRoomBloc>()
              .add(VideoRoomEvent.joinRoomLink(snapshot.data.toString()));
          // Future.delayed(const Duration(seconds: 2));

          WidgetsBinding.instance.addPostFrameCallback(
            (_) => Navigator.push(
                context,
                FadeRoute(
                  page: const MainScreen(
                    user: UserEntity(
                      email: 'test@test.ru',
                      userName: 'Username',
                      firstname: 'Firstname',
                    ),
                  ),
                )),
          );
        }
        return const MainScreen(
          user: UserEntity(
            email: 'test@test.ru',
            userName: 'Username',
            firstname: 'Firstname',
          ),
        );
      },
    );
  }
}
