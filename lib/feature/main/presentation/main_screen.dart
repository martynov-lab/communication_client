import 'package:communication_client/feature/auth/domain/auth_state/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../auth/domain/entities/user_entity/user_entity.dart';
import '../../auth/presentation/screen/user_screen.dart';

class MainScreen extends StatelessWidget {
  final UserEntity userEntity;
  const MainScreen({super.key, required this.userEntity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark, // For Android (light icons)
          statusBarBrightness: Brightness.dark, // For iOS (light icons)
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.arrow_back_ios_new,
        //     color: Colors.grey,
        //   ),
        //   onPressed: (() {
        //     Navigator.of(context).pop();
        //   }),
        // ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_box,
              color: Colors.grey,
            ),
            onPressed: (() {
              // context.read<AuthCubit>().getProfile();
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => UserScreen())));
            }),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      ),
    );
  }
}
