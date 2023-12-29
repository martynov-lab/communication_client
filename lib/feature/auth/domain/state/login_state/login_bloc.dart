import 'package:communication_client/app/utils/mixins/validation/validator_login_mixin.dart';
import 'package:communication_client/app/utils/utils.dart';
import 'package:communication_client/feature/auth/domain/entities/iput_state/input_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> with ValidatorLoginMixin {
  LoginBloc() : super(const LoginState()) {
    on<LoginEvent>(
      (event, emitter) async => await event.map<Future<void>>(
        changeEmail: (event) => _changeEmail(event, emitter),
        changePassword: (event) => _changePassword(event, emitter),
        unfocusEmail: (event) => _unfocusEmail(event, emitter),
        unfocusPassword: (event) => _unfocusPassword(event, emitter),
        formSubmit: (event) async => await _formSubmit(event, emitter),
      ),
      transformer: bloc_concurrency.droppable(),
    );
  }

  /// Validation form NetworkParams input
  bool _checkFomValid() {
    bool result = state.email?.isInputValid == true &&
        state.password?.isInputValid == true;
    return result;
  }

  Future<void> _changeEmail(
      _ChangeEmail event, Emitter<LoginState> emitter) async {
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

  Future<void> _changePassword(
      _ChangePassword event, Emitter<LoginState> emitter) async {
    emitter(
      state.copyWith(
        password: InputState(
          value: event.value,
          errorMessage: validatePassword(event.value),
        ),
        isFormValid: false,
      ),
    );
  }

  Future<void> _unfocusEmail(
      _UnfocusEmail event, Emitter<LoginState> emitter) async {
    emitter(state.copyWith(
      email: InputState(
        value: state.email?.value,
        isInputValid: validateEmailFinal(state.email?.value ?? '') == null,
        errorMessage: validateEmailFinal(state.email?.value ?? ''),
      ),
    ));
    // emitter(state.copyWith(
    //   isFormValid: _checkFomValid(),
    // ));
  }

  Future<void> _unfocusPassword(
      _UnfocusPassword event, Emitter<LoginState> emitter) async {
    emitter(state.copyWith(
      password: InputState(
        value: state.password?.value,
        isInputValid:
            validatePasswordFinal(state.password?.value ?? '') == null,
        errorMessage: validatePasswordFinal(state.password?.value ?? ''),
      ),
    ));
    // emitter(state.copyWith(
    //   isFormValid: _checkFomValid(),
    // ));
  }

  Future<void> _formSubmit(
      _FormSubmit event, Emitter<LoginState> emitter) async {
    emitter(state.copyWith(
      email: InputState(
        value: state.email?.value,
        isInputValid: validateEmailFinal(state.email?.value ?? '') == null,
        errorMessage: validateEmailFinal(state.email?.value ?? ''),
      ),
      password: InputState(
        value: state.password?.value,
        isInputValid:
            validatePasswordFinal(state.password?.value ?? '') == null,
        errorMessage: validatePasswordFinal(state.password?.value ?? ''),
      ),
      // isFormValid: _checkFomValid(),
    ));
    Utils.printWhite(
      'Submit',
    );
    emitter(state.copyWith(
      isFormValid: _checkFomValid(),
    ));
  }
}
