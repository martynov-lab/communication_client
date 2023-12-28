import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_state.freezed.dart';

@freezed
class InputState with _$InputState {
  const factory InputState({
    String? value,
    bool? isInputValid,
    String? errorMessage,
  }) = _InputState;
}
