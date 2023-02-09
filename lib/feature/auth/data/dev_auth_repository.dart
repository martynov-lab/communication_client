import 'package:communication_client/app/data/secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../app/data/dio_container.dart';
import '../domain/auth_repository.dart';
import '../domain/entities/user_entity/user_entity.dart';
import 'dto/user_dto.dart';

@Injectable(as: AuthRepository)
@dev
class DevAuthRepository implements AuthRepository {
  final DioContainer dioContainer;
  final SecureStorage secureStorage;

  DevAuthRepository(this.dioContainer, this.secureStorage);

  @override
  Future getProfile() async {
    try {
      final response = await dioContainer.dio.get("/auth/user");
      final user = UserDto.fromJson(response.data["data"]).toEntity();
      secureStorage.setAccessToken(user.accessToken);
      secureStorage.setAccessToken(user.refreshToken);
      return user;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future refrechToken({String? refreshToken}) async {
    try {
      final response = await dioContainer.dio.post("/auth/token/$refreshToken");
      final user = UserDto.fromJson(response.data["data"]).toEntity();
      secureStorage.setAccessToken(user.accessToken);
      secureStorage.setAccessToken(user.refreshToken);

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
      final response = await dioContainer.dio.post(
        "/auth/token",
        data: {"username": username, "password": password},
      );
      final user = UserDto.fromJson(response.data["data"]).toEntity();
      secureStorage.setAccessToken(user.accessToken);
      secureStorage.setAccessToken(user.refreshToken);
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
      final user = UserDto.fromJson(response.data['data']).toEntity();
      secureStorage.setAccessToken(user.accessToken);
      secureStorage.setAccessToken(user.refreshToken);
      return user;
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
