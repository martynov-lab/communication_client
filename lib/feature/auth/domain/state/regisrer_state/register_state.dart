part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    InputState? email,
    InputState? password,
    @Default(false) bool isFormValid,
  }) = _RegisterState;
}
