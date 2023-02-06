import 'package:communication_client/di/init_di.dart';
import 'package:communication_client/domain/app_builder.dart';
import 'package:communication_client/domain/app_runner.dart';
import 'package:flutter/material.dart';

class MainAppRunner implements AppRunner {
  final String env;

  const MainAppRunner(this.env);

  @override
  Future<void> preloadData() async {
    WidgetsFlutterBinding.ensureInitialized();
    //init app
    initDi(env);
    //init config
  }

  @override
  Future<void> run(AppBuilder appBuilder) async {
    await preloadData();
    runApp(appBuilder.buildApp());
  }
}
