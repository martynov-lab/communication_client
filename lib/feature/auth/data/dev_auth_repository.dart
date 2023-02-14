import 'package:injectable/injectable.dart';
import '../../../app/domain/app_api.dart';
import '../domain/auth_repository.dart';
import '../domain/entities/user_entity/user_entity.dart';
import 'dto/user_dto.dart';

@Injectable(as: AuthRepository)
@dev
class DevAuthRepository implements AuthRepository {
  final AppApi api;

  DevAuthRepository(this.api);

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
  Future updatePassword(
      {required String oldPassword, required String newPassword}) async {
    throw UnimplementedError();
  }

  @override
  Future updateUser({String? username, String? email}) async {
    throw UnimplementedError();
  }
}
