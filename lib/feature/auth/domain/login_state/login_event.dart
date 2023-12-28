part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.changeEmail(String value) = _ChangeEmail;
  const factory LoginEvent.changePassword(String value) = _ChangePassword;
  const factory LoginEvent.unfocusEmail() = _UnfocusEmail;
  const factory LoginEvent.unfocusPassword() = _UnfocusPassword;
  const factory LoginEvent.formSubmit() = _FormSubmit;
}
