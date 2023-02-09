import 'package:communication_client/app/data/dio_container.dart';
import 'package:communication_client/feature/auth/data/dto/user_dto.dart';
import 'package:communication_client/feature/auth/domain/auth_repository.dart';
import 'package:communication_client/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
@prod
class NetWorkAuthRepository implements AuthRepository {
  final DioContainer dioContainer;

  NetWorkAuthRepository(this.dioContainer);

  @override
  Future getProfile() {
    // TODO: implement getProfile
    throw UnimplementedError();
  }

  @override
  Future refrechToken({String? refreshToken}) async {
    try {
      final response = await dioContainer.dio.post("/auth/token/$refreshToken");
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
