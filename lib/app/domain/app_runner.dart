import 'package:communication_client/domain/app_builder.dart';

abstract class AppRunner {
  Future<void> preloadData();
  Future<void> run(AppBuilder appBuilder);
}
