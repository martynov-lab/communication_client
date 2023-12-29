import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:communication_client/app/di/init_di.dart';
import 'package:communication_client/app/domain/app_builder.dart';
import 'package:communication_client/app/domain/app_runner.dart';
import 'package:communication_client/app_bloc_observer.dart';
import 'package:communication_client/feature/auth/data/storage_auth.dart';
import 'package:communication_client/firebase_options.dart';

class MainAppRunner implements AppRunner {
  final String env;

  const MainAppRunner(this.env);

  @override
  Future<void> preloadData() async {
    WidgetsFlutterBinding.ensureInitialized();

    StorageAuth.init();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    initDi(env);
  }

  @override
  Future<void> run(AppBuilder appBuilder) async {
    Bloc.observer = AppBlocObserver.instance();
    Bloc.transformer = bloc_concurrency.sequential<Object?>();

    await preloadData();
    runApp(appBuilder.buildApp());
  }
}
