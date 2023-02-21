import 'package:communication_client/feature/auth/data/dto/user_dto.dart';
import 'package:communication_client/feature/auth/domain/auth_repository.dart';
import 'package:communication_client/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../app/domain/app_api.dart';

@Injectable(as: AuthRepository)
@prod
@dev
class NetWorkAuthRepository implements AuthRepository {
  final AppApi api;

  NetWorkAuthRepository(this.api);

  @override
  Future<UserEntity> getProfile() async {
    try {
      final response = await api.getProfile();
      print('Response.statusCode: ${response.statusCode}');
      print('Response.data: ${response.data}');
      final user = UserDto.fromJson(response.data["data"]).toEntity();
      return user;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> refrechToken({String? refreshToken}) async {
    try {
      print('RefreshToken: $refreshToken');
      final response = await api.refrechToken(refreshToken: refreshToken);
      print('Response.statusCode: ${response.statusCode}');
      print('Response.data: ${response.data}');
      final user = UserDto.fromJson(response.data["data"]).toEntity();

      return user;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> signIn({
    required String username,
    required String password,
  }) async {
    try {
      final response = await api.signIn(username: username, password: password);
      print('Response.statusCode: ${response.statusCode}');
      print('Response.data: ${response.data}');
      final user = UserDto.fromJson(response.data["data"]).toEntity();
      return user;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> signUp({
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      final response = await api.signUp(
          username: username, email: email, password: password);
      final user = UserDto.fromJson(response.data['data']).toEntity();
      return user;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> updatePassword(
      {required String oldPassword, required String newPassword}) async {
    try {
      final Response response = await api.updatePassword(
          newPassword: newPassword, oldPassword: oldPassword);
      return response.data["message"];
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> updateUser({String? username, String? email}) async {
    try {
      final response = await api.updateUser(username: username, email: email);
      final user = UserDto.fromJson(response.data['data']).toEntity();
      return user;
    } catch (_) {
      rethrow;
    }
  }
}
