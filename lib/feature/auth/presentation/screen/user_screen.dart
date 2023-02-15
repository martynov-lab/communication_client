import 'package:communication_client/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        body: BlocBuilder<AuthCubit, AuthState>(builder: ((context, state) {
          final userEntity = state.whenOrNull(
            authorized: (userEntity) => userEntity,
          );
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
                          userEntity?.username.split('').first.toUpperCase() ??
                              ''),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(userEntity?.username ?? 'Нет значения'),
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
                      onPressed: (() {}),
                      child: const Text('Обновить пароль'),
                    ),
                    TextButton(
                      onPressed: (() {}),
                      child: const Text('Изменить учетные данные'),
                    ),
                  ],
                )
              ],
            ),
          );
        })));
  }
}
