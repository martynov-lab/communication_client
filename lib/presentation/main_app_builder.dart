import 'package:communication_client/domain/app_builder.dart';
import 'package:flutter/material.dart';

class MainAppBuilder implements AppBuilder {
  @override
  Widget buildApp() {
    return const MaterialApp(
      home: Scaffold(
          body: Center(
        child: Text("Hello"),
      )),
    );
  }
}
