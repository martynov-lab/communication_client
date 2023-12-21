import 'package:communication_client/app/presentation/main_app_builder.dart';
import 'package:communication_client/app/presentation/main_app_runner.dart';
import 'package:communication_client/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseApp app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  print('Initialized default app: $app');
  const env = String.fromEnvironment("env", defaultValue: "dev");
  print('ENV: $env');
  const runner = MainAppRunner(env);
  print('Runner: $runner');
  final builder = MainAppBuilder();
  print('Builder: $builder');
  runner.run(builder);
}
