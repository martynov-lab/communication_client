part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    InputState? email,
    InputState? password,
    @Default(false) bool isFormValid,
  }) = _LoginState;
}
