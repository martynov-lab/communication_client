part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.changeFirstName(String value) =
      _ChangeFirstNameRegisterEvent;
  const factory RegisterEvent.changeEmail(String value) =
      _ChangeEmailRegisterEvent;
  const factory RegisterEvent.changePasswordFirst(String value) =
      _ChangePasswordFirstRegisterEvent;
  const factory RegisterEvent.changePasswordSecond(String value) =
      _ChangePasswordSecondRegisterEvent;
  const factory RegisterEvent.unfocusFirstName() =
      _UnfocusFirstNameRegisterEvent;
  const factory RegisterEvent.unfocusEmail() = _UnfocusEmailRegisterEvent;
  const factory RegisterEvent.unfocusPasswordFirst() =
      _UnfocusPasswordFirstRegisterEvent;
  const factory RegisterEvent.unfocusPasswordSecond() =
      _UnfocusPasswordSecondRegisterEvent;
  const factory RegisterEvent.formSubmit() = _FormSubmitRegisterEvent;
}
