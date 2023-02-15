import 'package:communication_client/app/presentation/main_app_builder.dart';
import 'package:communication_client/app/presentation/main_app_runner.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  const env = String.fromEnvironment("env", defaultValue: "test");
  const runner = MainAppRunner(env);
  final builder = MainAppBuilder();
  runner.run(builder);
}
