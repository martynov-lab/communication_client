import 'package:communication_client/app/domain/app_config.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class DioContainer {
  late final Dio dio;

  DioContainer(AppConfig appConfig) {
    final options = BaseOptions(
      baseUrl: appConfig.baseUrl,
      connectTimeout: 15000,
    );
    dio = Dio(options);
  }

  void addInterceptor(Interceptor interceptor) {
    if (dio.interceptors.contains(interceptor)) {
      dio.interceptors.remove(interceptor);
    }

    deleteIntercepto(interceptor.runtimeType);

    dio.interceptors.add(interceptor);
  }

  void deleteIntercepto(Type type) {
    dio.interceptors.removeWhere((element) => element.runtimeType == type);
  }
}
