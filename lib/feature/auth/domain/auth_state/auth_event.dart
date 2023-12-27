part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn({
    required String email,
    required String password,
  }) = _SignInAuthEvent;
  const factory AuthEvent.signUp({
    required String username,
    required String email,
    required String password,
  }) = _SignUpAuthEvent;
  const factory AuthEvent.logout() = _LogoutAuthEvent;
  const factory AuthEvent.userUpdate({
    required String username,
    required String email,
  }) = _UserUpdateAuthEvent;
  const factory AuthEvent.refreshToken() = _RefreshTokenAuthEvent;
  const factory AuthEvent.passwordUpdate({
    required String oldPassword,
    required String newPassword,
  }) = _PasswordUpdateAuthEvent;
}
