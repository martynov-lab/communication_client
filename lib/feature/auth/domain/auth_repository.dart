abstract class AuthRepository {
  Future<dynamic> signUp({
    required String username,
    required String email,
    required String password,
  });
  Future<dynamic> signIn({
    required String email,
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
  Future<void> logout();
}
