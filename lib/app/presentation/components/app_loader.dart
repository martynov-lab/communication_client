import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}

class SpinKitLoader {
  static const spinkit = SpinKitWaveSpinner(
    color: Color.fromARGB(255, 1, 150, 249),
    size: 50.0,
  );
}
