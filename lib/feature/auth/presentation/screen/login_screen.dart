import 'package:communication_client/feature/auth/domain/state/login_state/login_bloc.dart';
import 'package:communication_client/feature/auth/presentation/components/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => LoginBloc(),
        child: const _LoginScreen(),
      );
}

class _LoginScreen extends StatelessWidget {
  const _LoginScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 120,
              left: 30,
              right: 30,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 20),
                      child: const Text(
                        'Numa',
                        style: TextStyle(
                          fontFamily: 'RedHatDisplay',
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 93, 134, 239),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const LoginForm(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // ),
    );
  }
}
