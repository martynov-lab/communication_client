import 'package:communication_client/feature/auth/domain/auth_repository.dart';
import 'package:communication_client/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
@test
class MockAuthRepository implements AuthRepository {
  @override
  Future getProfile() {
    // TODO: implement getProfile
    throw UnimplementedError();
  }

  @override
  Future refrechToken({String? refreshToken}) {
    // TODO: implement refrechToken
    throw UnimplementedError();
  }

  @override
  Future signIn({
    required String email,
    required String password,
  }) {
    return Future.delayed(const Duration(seconds: 2), () {
      //throw Exception("test");
      return UserEntity(
        userId: '0',
        email: email,
        userName: 'username',
        firstname: '',
      );
    });
  }

  @override
  Future signUp({
    required String username,
    required String email,
    required String password,
  }) {
    return Future.delayed(const Duration(seconds: 2), () {
      return UserEntity(
        userId: '0',
        email: email,
        userName: 'username',
        firstname: '',
      );
    });
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

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  // TODO: implement currentUser
  UserEntity get currentUser => throw UnimplementedError();
}
