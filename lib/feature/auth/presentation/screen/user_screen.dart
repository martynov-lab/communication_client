import 'package:communication_client/feature/auth/domain/state/auth_state/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Личный кабинет'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.exit_to_app_rounded,
              color: Colors.grey,
            ),
            onPressed: (() {
              Navigator.pop(context);
              context.read<AuthBloc>().add(const AuthEvent.logout());
            }),
          ),
        ],
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            authorized: (userEntity) {
              // if (userEntity.userState?.hasData == true) {
              //   showSnackBar(context, userEntity.userState?.data);
              // }
              // if (userEntity.userState?.hasError == true) {
              //   showErrorSnackBar(context,
              //       ErrorEntity.fromException(userEntity.userState?.data));
              // }
            },
          );
        },
        builder: (context, state) {
          final userEntity = state.whenOrNull(
            authorized: (userEntity) => userEntity,
          );
          // if (userEntity?.userState?.connectionState ==
          //     ConnectionState.waiting) {
          //   return const AppLoader();
          // }
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.indigo[200],
                      child: Text(
                          // userEntity?.username.split('').first.toUpperCase() ??
                          ''),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text(userEntity?.username ?? 'Нет значения'),
                          Text(userEntity?.email ?? 'Нет значения'),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: (() {
                        // showDialog(
                        //   context: context,
                        //   builder: (context) => AppDialog(
                        //     val1: "old password",
                        //     val2: "new password",
                        //     onPressed: (value1, value2) {
                        //       context.read<AuthCubit>().passwordUpdate(
                        //           newPassword: value1, oldPassword: value2);
                        //     },
                        //   ),
                        // );
                      }),
                      child: const Text('Обновить пароль'),
                    ),
                    TextButton(
                      onPressed: (() {
                        // showDialog(
                        //     context: context,
                        //     builder: ((context) => AppDialog(
                        //           val1: "username",
                        //           val2: "email",
                        //           onPressed: (value1, value2) {
                        //             context.read<AuthCubit>().userUpdate(
                        //                   value1,
                        //                   value2,
                        //                 );
                        //           },
                        //         )));
                      }),
                      child: const Text('Изменить учетные данные'),
                    ),
                  ],
                ),
                //
              ],
            ),
          );
        },
      ),
    );
  }
}
