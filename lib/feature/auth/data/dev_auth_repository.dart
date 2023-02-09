import 'package:injectable/injectable.dart';

import '../../../app/data/dio_container.dart';
import '../domain/auth_repository.dart';
import '../domain/entities/user_entity/user_entity.dart';
import 'dto/user_dto.dart';

@Injectable(as: AuthRepository)
@dev
class DevAuthRepository implements AuthRepository {
  final DioContainer dioContainer;

  DevAuthRepository(this.dioContainer);

  @override
  Future getProfile() {
    // TODO: implement getProfile
    throw UnimplementedError();
  }

  @override
  Future refrechToken({required String refreshToken}) {
    // TODO: implement refrechToken
    throw UnimplementedError();
  }

  @override
  Future<UserEntity> signIn({
    required String username,
    required String password,
  }) async {
    try {
      final response = await dioContainer.dio.post(
        "/auth/token",
        data: {"username": username, "password": password},
      );
      print('Response.statusCode: ${response.statusCode}');
      print('Response.data: ${response.data}');
      final user = UserDto.fromJson(response.data["data"]).toEntity();
      return user;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future signUp({
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      final response = await dioContainer.dio.put(
        '/auth/token',
        data: {
          'username': username,
          'email': email,
          'password': password,
        },
      );
      return UserDto.fromJson(response.data['data']).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future updatePassword(
      {required String oldPassword, required String newPassword}) {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }

  @override
  Future updateUser({String? username, String? email}) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
