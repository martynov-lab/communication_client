part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.changeEmail(String value) = _ChangeEmailLoginEvent;
  const factory LoginEvent.changePassword(String value) =
      _ChangePasswordLoginEvent;
  const factory LoginEvent.unfocusEmail() = _UnfocusEmailLoginEvent;
  const factory LoginEvent.unfocusPassword() = _UnfocusPasswordLoginEvent;
  const factory LoginEvent.formSubmit() = _FormSubmitLoginEvent;
}
