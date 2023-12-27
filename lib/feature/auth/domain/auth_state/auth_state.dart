part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState.unauthorized() = _AuthStateUnauthorized;
  factory AuthState.authorized(UserEntity userEntity) = _AuthStateAuthorized;
  factory AuthState.loading() = _AuthStateLoading;
  factory AuthState.error(dynamic error) = _AuthStateError;
}
