import 'package:flutter/material.dart';

import '../components/login_form.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                  Image.asset(
                    'assets/logo/logo_login.png',
                    fit: BoxFit.contain,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 20),
                    child: const Text(
                      'ProTime',
                      style: TextStyle(
                        fontFamily: 'RedHatDisplay',
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 93, 134, 239),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  LoginForm(),
                ],
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
