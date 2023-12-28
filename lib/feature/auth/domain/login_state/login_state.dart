part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    // String? email,
    // bool? isInputEmail,
    // String? errorEmailMessage,
    // String? password,
    // bool? isInputPassword,
    // String? errorPasswordMessage,
    InputState? email,
    InputState? password,
    bool? isFormValid,
  }) = _LoginState;
}
