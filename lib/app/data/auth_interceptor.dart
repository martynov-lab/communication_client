import 'package:communication_client/app/di/init_di.dart';
import 'package:communication_client/feature/auth/domain/auth_state/auth_bloc.dart';
import 'package:dio/dio.dart';

import '../domain/app_api.dart';

class AuthInterceptor extends QueuedInterceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final accessToken = locator.get<AuthBloc>().state.whenOrNull(
        // authorized: (userEntity) => userEntity.accessToken,
        );

    if (accessToken == null) {
      super.onRequest(options, handler);
    } else {
      final headers = options.headers;
      headers["Authorization"] = "Bearer $accessToken";
      super.onRequest(options.copyWith(headers: headers), handler);
    }
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      try {
        var bloc = locator.get<AuthBloc>();
        bloc.add(const AuthEvent.refreshToken());
        final token = locator.get<AuthBloc>().state.whenOrNull(
              authorized: (userEntity) => userEntity.userId,
            );
        if (token == null) {
          super.onError(err, handler);
        } else {
          err.requestOptions.headers["Authorization"] = "Bearer $token";
          final response =
              await locator.get<AppApi>().fetch(err.requestOptions);
          return handler.resolve(response);
        }
      } on DioError catch (error) {
        super.onError(error, handler);
      }
    } else {
      super.onError(err, handler);
    }
  }
}
