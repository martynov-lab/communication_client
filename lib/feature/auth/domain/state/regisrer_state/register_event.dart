part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.changeEmail(String value) =
      _ChangeEmailRegisterEvent;
  const factory RegisterEvent.changePassword(String value) =
      _ChangePasswordRegisterEvent;
  const factory RegisterEvent.unfocusEmail() = _UnfocusEmailRegisterEvent;
  const factory RegisterEvent.unfocusPassword() = _UnfocusPasswordRegisterEvent;
  const factory RegisterEvent.formSubmit() = _FormSubmitRegisterEvent;
}
