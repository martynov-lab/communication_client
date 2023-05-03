import 'package:communication_client/app/domain/app_config.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AppConfig)
@prod
class ProdAppConfig implements AppConfig {
  @override
  String get baseUrl => "http://82.146.58.16"; //"http://62.109.24.168";
  @override
  String get wsUrl => "ws//:10.0.2.2/connect";

  @override
  String get host => Environment.prod;
}

@Singleton(as: AppConfig)
@dev
class DevAppConfig implements AppConfig {
  @override
  String get baseUrl => "http://10.0.2.2"; //"http://localhost";
  @override
  String get wsUrl => "ws://10.0.2.2:6200/signal";

  @override
  String get host => Environment.dev;
}

@Singleton(as: AppConfig)
@test
class TestAppConfig implements AppConfig {
  @override
  String get baseUrl => "_";
  @override
  String get wsUrl => "_";

  @override
  String get host => Environment.test;
}
