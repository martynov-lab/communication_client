import 'package:communication_client/app/data/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../domain/app_api.dart';
import '../domain/app_config.dart';

@Singleton(as: AppApi)
class DioAppApi implements AppApi {
  late final Dio dio;
  late final Dio dioTokens;

  DioAppApi(AppConfig appConfig) {
    final options = BaseOptions(
      baseUrl: appConfig.baseUrl,
      connectTimeout: const Duration(milliseconds: 15000),
    );
    dio = Dio(options);
    dioTokens = Dio(options);
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger());
      dioTokens.interceptors.add(PrettyDioLogger());
    }
    dio.interceptors.add(AuthInterceptor());
  }

  @override
  Future<Response> getProfile() async {
    try {
      return await dio.get("/auth/user");
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> refrechToken({String? refreshToken}) async {
    try {
      return await dioTokens.post("/auth/token/$refreshToken");
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> signIn(
      {required String email, required String password}) async {
    try {
      return await dio.post(
        "/auth/singin",
        data: {"email": email, "password": password},
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> signUp(
      {required String username,
      required String email,
      required String password}) async {
    try {
      return await dio.post(
        '/auth/singup',
        data: {
          'username': username,
          'email': email,
          'password': password,
        },
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> updatePassword(
      {required String oldPassword, required String newPassword}) {
    return dio.put("/auth/user", queryParameters: {
      "oldPassword": oldPassword,
      "newPassword": newPassword,
    });
  }

  @override
  Future<Response> updateUser({String? username, String? email}) {
    return dio.post("/auth/user", data: {
      "username": username,
      "email": email,
    });
  }

  @override
  Future<Response> fetchMessages(int fetchLimit, int offset) {
    return dio.get('/data/posts',
        queryParameters: {"fetchLimit": fetchLimit, "offset": offset});
  }

  @override
  Future<Response> createMessage(Map args) {
    return dio.post('/data/posts',
        data: {"name": args["name"], "content": args["content"]});
  }

  @override
  Future<Response> fetchChats(String id) {
    return dio.get('/data/posts/$id');
  }

  @override
  Future deleteMessage(String id) {
    return dio.delete('/data/posts/$id');
  }

  @override
  Future request(String path) async {
    return await dio.request(path);
  }

  @override
  Future fetch(RequestOptions requestOptions) async {
    return await dioTokens.fetch(requestOptions);
  }
}
