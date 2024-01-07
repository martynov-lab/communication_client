part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    InputState? firstName,
    InputState? email,
    InputState? passwordFirst,
    InputState? passwordSecond,
    @Default(false) bool isFormValid,
  }) = _RegisterState;
}

@freezed
class InputPasswordState with _$InputPasswordState {
  const factory InputPasswordState({
    String? value,
    bool? isInputValid,
    bool? isMatche,
    bool? isWord,
    bool? isNumber,
    String? errorMessage,
  }) = _InputPasswordState;
}
