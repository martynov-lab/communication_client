import 'package:communication_client/app/di/init_di.dart';
import 'package:communication_client/app/domain/app_builder.dart';
import 'package:communication_client/app/domain/app_runner.dart';
import 'package:communication_client/feature/auth/data/storage_auth.dart';
import 'package:communication_client/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

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
    // HydratedBloc.storage = await HydratedStorage.build(
    //   storageDirectory: kIsWeb
    //       ? HydratedStorage.webStorageDirectory
    //       : await getApplicationDocumentsDirectory(),
    // );
    await preloadData();
    runApp(appBuilder.buildApp());

    //  BlocOverrides.runZoned((() => runApp(const MyApp())),
    //   blocObserver: MyBlocObserver());
  }
}
