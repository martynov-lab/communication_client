import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:communication_client/app/utils/mixins/validation/validator_login_mixin.dart';
import 'package:communication_client/feature/auth/domain/entities/iput_state/input_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState>
    with ValidatorLoginMixin {
  RegisterBloc() : super(const RegisterState()) {
    on<RegisterEvent>(
      (event, emitter) async => await event.map<Future<void>>(
        changeFirstName: (event) => _changeFirstName(event, emitter),
        changeEmail: (event) => _changeEmail(event, emitter),
        changePasswordFirst: (event) => _changePasswordFirst(event, emitter),
        changePasswordSecond: (event) => _changePasswordSecond(event, emitter),
        unfocusFirstName: (event) => _unfocusFirstName(event, emitter),
        unfocusEmail: (event) => _unfocusEmail(event, emitter),
        unfocusPasswordFirst: (event) => _unfocusPasswordFirst(event, emitter),
        unfocusPasswordSecond: (event) =>
            _unfocusPasswordSecond(event, emitter),
        formSubmit: (event) async => await _formSubmit(event, emitter),
      ),
      transformer: bloc_concurrency.droppable(),
    );
  }

  /// Validation form NetworkParams input
  bool _checkFomValid() {
    bool result = state.email?.isInputValid == true &&
        state.passwordFirst?.isInputValid == true &&
        state.passwordSecond?.isInputValid == true;
    return result;
  }

  Future<void> _changeFirstName(_ChangeFirstNameRegisterEvent event,
      Emitter<RegisterState> emitter) async {
    emitter(
      state.copyWith(
        firstName: InputState(
          value: event.value,
          errorMessage: validateFirstName(event.value),
        ),
        isFormValid: false,
      ),
    );
  }

  Future<void> _changeEmail(
      _ChangeEmailRegisterEvent event, Emitter<RegisterState> emitter) async {
    emitter(
      state.copyWith(
        email: InputState(
          value: event.value,
          errorMessage: validateEmail(event.value),
        ),
        isFormValid: false,
      ),
    );
  }

  Future<void> _changePasswordFirst(_ChangePasswordFirstRegisterEvent event,
      Emitter<RegisterState> emitter) async {
    emitter(
      state.copyWith(
        passwordFirst: InputState(
          value: event.value,
          errorMessage: validatePassword(event.value),
        ),
        isFormValid: false,
      ),
    );
  }

  Future<void> _changePasswordSecond(_ChangePasswordSecondRegisterEvent event,
      Emitter<RegisterState> emitter) async {
    emitter(
      state.copyWith(
        passwordSecond: InputState(
          value: event.value,
          errorMessage: validatePassword(event.value),
        ),
        isFormValid: false,
      ),
    );
  }

  Future<void> _unfocusFirstName(_UnfocusFirstNameRegisterEvent event,
      Emitter<RegisterState> emitter) async {
    String? errorMessage = validateFirstNameFinal(state.email?.value ?? '');
    emitter(state.copyWith(
      firstName: InputState(
        value: state.email?.value,
        isInputValid: errorMessage == null,
        errorMessage: errorMessage,
      ),
    ));
  }

  Future<void> _unfocusEmail(
      _UnfocusEmailRegisterEvent event, Emitter<RegisterState> emitter) async {
    String? errorMessage = validateEmailFinal(state.email?.value ?? '');
    emitter(state.copyWith(
      email: InputState(
        value: state.email?.value,
        isInputValid: errorMessage == null,
        errorMessage: errorMessage,
      ),
    ));
  }

  Future<void> _unfocusPasswordFirst(_UnfocusPasswordFirstRegisterEvent event,
      Emitter<RegisterState> emitter) async {
    String? errorMessage =
        validatePasswordFinal(state.passwordFirst?.value ?? '');
    emitter(state.copyWith(
      passwordFirst: InputState(
        value: state.passwordFirst?.value,
        isInputValid: errorMessage == null,
        errorMessage: errorMessage,
      ),
    ));
  }

  Future<void> _unfocusPasswordSecond(_UnfocusPasswordSecondRegisterEvent event,
      Emitter<RegisterState> emitter) async {
    String? errorMessage =
        validatePasswordFinal(state.passwordSecond?.value ?? '');
    emitter(state.copyWith(
      passwordSecond: InputState(
        value: state.passwordSecond?.value,
        isInputValid: errorMessage == null,
        errorMessage: errorMessage,
      ),
    ));
  }

  Future<void> _formSubmit(
      _FormSubmitRegisterEvent event, Emitter<RegisterState> emitter) async {
    String? errorMessageEmail = validateEmailFinal(state.email?.value ?? '');
    String? errorMessagePasswordFirst =
        validatePasswordFinal(state.passwordFirst?.value ?? '');
    String? errorMessagePasswordSecond =
        validatePasswordFinal(state.passwordSecond?.value ?? '');

    emitter(state.copyWith(
      email: InputState(
        value: state.email?.value,
        isInputValid: errorMessageEmail == null,
        errorMessage: errorMessageEmail,
      ),
      passwordFirst: InputState(
        value: state.passwordFirst?.value,
        isInputValid: errorMessagePasswordFirst == null,
        errorMessage: errorMessagePasswordFirst,
      ),
      passwordSecond: InputState(
        value: state.passwordSecond?.value,
        isInputValid: errorMessagePasswordSecond == null,
        errorMessage: errorMessagePasswordSecond,
      ),
    ));

    emitter(state.copyWith(
      isFormValid: _checkFomValid(),
    ));
  }
}
