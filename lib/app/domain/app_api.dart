import 'package:dio/dio.dart';

abstract class AppApi {
  Future<dynamic> signUp({
    required String username,
    required String email,
    required String password,
  });
  Future<dynamic> signIn({
    required String username,
    required String password,
  });
  Future<dynamic> getProfile();
  Future<dynamic> updateUser({
    String? username,
    String? email,
  });
  Future<dynamic> updatePassword({
    required String oldPassword,
    required String newPassword,
  });
  Future<dynamic> refrechToken({String? refreshToken});
  Future<dynamic> request(String path);
  Future<dynamic> fetch(RequestOptions requestOptions);
  Future<dynamic> fetchPosts();
  Future<dynamic> createPost(Map args);
}
