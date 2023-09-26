import 'package:communication_client/app/domain/error_entity/error_entity.dart';
import 'package:communication_client/app/presentation/components/app_loader.dart';
import 'package:communication_client/app/presentation/components/app_snackbar/top_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../app/presentation/components/app_dialog.dart';
import '../../domain/auth_state/auth_cubit.dart';

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
              context.read<AuthCubit>().logout();
            }),
          ),
        ],
      ),
      body: BlocConsumer<AuthCubit, AuthState>(
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
