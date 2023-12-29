// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePassword,
    required TResult Function() unfocusEmail,
    required TResult Function() unfocusPassword,
    required TResult Function() formSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePassword,
    TResult? Function()? unfocusEmail,
    TResult? Function()? unfocusPassword,
    TResult? Function()? formSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePassword,
    TResult Function()? unfocusEmail,
    TResult Function()? unfocusPassword,
    TResult Function()? formSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_UnfocusEmail value) unfocusEmail,
    required TResult Function(_UnfocusPassword value) unfocusPassword,
    required TResult Function(_FormSubmit value) formSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_UnfocusEmail value)? unfocusEmail,
    TResult? Function(_UnfocusPassword value)? unfocusPassword,
    TResult? Function(_FormSubmit value)? formSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_UnfocusEmail value)? unfocusEmail,
    TResult Function(_UnfocusPassword value)? unfocusPassword,
    TResult Function(_FormSubmit value)? formSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeEmailImplCopyWith<$Res> {
  factory _$$ChangeEmailImplCopyWith(
          _$ChangeEmailImpl value, $Res Function(_$ChangeEmailImpl) then) =
      __$$ChangeEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ChangeEmailImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ChangeEmailImpl>
    implements _$$ChangeEmailImplCopyWith<$Res> {
  __$$ChangeEmailImplCopyWithImpl(
      _$ChangeEmailImpl _value, $Res Function(_$ChangeEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ChangeEmailImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeEmailImpl implements _ChangeEmail {
  const _$ChangeEmailImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.changeEmail(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeEmailImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeEmailImplCopyWith<_$ChangeEmailImpl> get copyWith =>
      __$$ChangeEmailImplCopyWithImpl<_$ChangeEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePassword,
    required TResult Function() unfocusEmail,
    required TResult Function() unfocusPassword,
    required TResult Function() formSubmit,
  }) {
    return changeEmail(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePassword,
    TResult? Function()? unfocusEmail,
    TResult? Function()? unfocusPassword,
    TResult? Function()? formSubmit,
  }) {
    return changeEmail?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePassword,
    TResult Function()? unfocusEmail,
    TResult Function()? unfocusPassword,
    TResult Function()? formSubmit,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_UnfocusEmail value) unfocusEmail,
    required TResult Function(_UnfocusPassword value) unfocusPassword,
    required TResult Function(_FormSubmit value) formSubmit,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_UnfocusEmail value)? unfocusEmail,
    TResult? Function(_UnfocusPassword value)? unfocusPassword,
    TResult? Function(_FormSubmit value)? formSubmit,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_UnfocusEmail value)? unfocusEmail,
    TResult Function(_UnfocusPassword value)? unfocusPassword,
    TResult Function(_FormSubmit value)? formSubmit,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class _ChangeEmail implements LoginEvent {
  const factory _ChangeEmail(final String value) = _$ChangeEmailImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$ChangeEmailImplCopyWith<_$ChangeEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordImplCopyWith<$Res> {
  factory _$$ChangePasswordImplCopyWith(_$ChangePasswordImpl value,
          $Res Function(_$ChangePasswordImpl) then) =
      __$$ChangePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ChangePasswordImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ChangePasswordImpl>
    implements _$$ChangePasswordImplCopyWith<$Res> {
  __$$ChangePasswordImplCopyWithImpl(
      _$ChangePasswordImpl _value, $Res Function(_$ChangePasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ChangePasswordImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePasswordImpl implements _ChangePassword {
  const _$ChangePasswordImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.changePassword(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      __$$ChangePasswordImplCopyWithImpl<_$ChangePasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePassword,
    required TResult Function() unfocusEmail,
    required TResult Function() unfocusPassword,
    required TResult Function() formSubmit,
  }) {
    return changePassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePassword,
    TResult? Function()? unfocusEmail,
    TResult? Function()? unfocusPassword,
    TResult? Function()? formSubmit,
  }) {
    return changePassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePassword,
    TResult Function()? unfocusEmail,
    TResult Function()? unfocusPassword,
    TResult Function()? formSubmit,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_UnfocusEmail value) unfocusEmail,
    required TResult Function(_UnfocusPassword value) unfocusPassword,
    required TResult Function(_FormSubmit value) formSubmit,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_UnfocusEmail value)? unfocusEmail,
    TResult? Function(_UnfocusPassword value)? unfocusPassword,
    TResult? Function(_FormSubmit value)? formSubmit,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_UnfocusEmail value)? unfocusEmail,
    TResult Function(_UnfocusPassword value)? unfocusPassword,
    TResult Function(_FormSubmit value)? formSubmit,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements LoginEvent {
  const factory _ChangePassword(final String value) = _$ChangePasswordImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnfocusEmailImplCopyWith<$Res> {
  factory _$$UnfocusEmailImplCopyWith(
          _$UnfocusEmailImpl value, $Res Function(_$UnfocusEmailImpl) then) =
      __$$UnfocusEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnfocusEmailImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$UnfocusEmailImpl>
    implements _$$UnfocusEmailImplCopyWith<$Res> {
  __$$UnfocusEmailImplCopyWithImpl(
      _$UnfocusEmailImpl _value, $Res Function(_$UnfocusEmailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnfocusEmailImpl implements _UnfocusEmail {
  const _$UnfocusEmailImpl();

  @override
  String toString() {
    return 'LoginEvent.unfocusEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnfocusEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePassword,
    required TResult Function() unfocusEmail,
    required TResult Function() unfocusPassword,
    required TResult Function() formSubmit,
  }) {
    return unfocusEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePassword,
    TResult? Function()? unfocusEmail,
    TResult? Function()? unfocusPassword,
    TResult? Function()? formSubmit,
  }) {
    return unfocusEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePassword,
    TResult Function()? unfocusEmail,
    TResult Function()? unfocusPassword,
    TResult Function()? formSubmit,
    required TResult orElse(),
  }) {
    if (unfocusEmail != null) {
      return unfocusEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_UnfocusEmail value) unfocusEmail,
    required TResult Function(_UnfocusPassword value) unfocusPassword,
    required TResult Function(_FormSubmit value) formSubmit,
  }) {
    return unfocusEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_UnfocusEmail value)? unfocusEmail,
    TResult? Function(_UnfocusPassword value)? unfocusPassword,
    TResult? Function(_FormSubmit value)? formSubmit,
  }) {
    return unfocusEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_UnfocusEmail value)? unfocusEmail,
    TResult Function(_UnfocusPassword value)? unfocusPassword,
    TResult Function(_FormSubmit value)? formSubmit,
    required TResult orElse(),
  }) {
    if (unfocusEmail != null) {
      return unfocusEmail(this);
    }
    return orElse();
  }
}

abstract class _UnfocusEmail implements LoginEvent {
  const factory _UnfocusEmail() = _$UnfocusEmailImpl;
}

/// @nodoc
abstract class _$$UnfocusPasswordImplCopyWith<$Res> {
  factory _$$UnfocusPasswordImplCopyWith(_$UnfocusPasswordImpl value,
          $Res Function(_$UnfocusPasswordImpl) then) =
      __$$UnfocusPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnfocusPasswordImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$UnfocusPasswordImpl>
    implements _$$UnfocusPasswordImplCopyWith<$Res> {
  __$$UnfocusPasswordImplCopyWithImpl(
      _$UnfocusPasswordImpl _value, $Res Function(_$UnfocusPasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnfocusPasswordImpl implements _UnfocusPassword {
  const _$UnfocusPasswordImpl();

  @override
  String toString() {
    return 'LoginEvent.unfocusPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnfocusPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePassword,
    required TResult Function() unfocusEmail,
    required TResult Function() unfocusPassword,
    required TResult Function() formSubmit,
  }) {
    return unfocusPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePassword,
    TResult? Function()? unfocusEmail,
    TResult? Function()? unfocusPassword,
    TResult? Function()? formSubmit,
  }) {
    return unfocusPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePassword,
    TResult Function()? unfocusEmail,
    TResult Function()? unfocusPassword,
    TResult Function()? formSubmit,
    required TResult orElse(),
  }) {
    if (unfocusPassword != null) {
      return unfocusPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_UnfocusEmail value) unfocusEmail,
    required TResult Function(_UnfocusPassword value) unfocusPassword,
    required TResult Function(_FormSubmit value) formSubmit,
  }) {
    return unfocusPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_UnfocusEmail value)? unfocusEmail,
    TResult? Function(_UnfocusPassword value)? unfocusPassword,
    TResult? Function(_FormSubmit value)? formSubmit,
  }) {
    return unfocusPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_UnfocusEmail value)? unfocusEmail,
    TResult Function(_UnfocusPassword value)? unfocusPassword,
    TResult Function(_FormSubmit value)? formSubmit,
    required TResult orElse(),
  }) {
    if (unfocusPassword != null) {
      return unfocusPassword(this);
    }
    return orElse();
  }
}

abstract class _UnfocusPassword implements LoginEvent {
  const factory _UnfocusPassword() = _$UnfocusPasswordImpl;
}

/// @nodoc
abstract class _$$FormSubmitImplCopyWith<$Res> {
  factory _$$FormSubmitImplCopyWith(
          _$FormSubmitImpl value, $Res Function(_$FormSubmitImpl) then) =
      __$$FormSubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormSubmitImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$FormSubmitImpl>
    implements _$$FormSubmitImplCopyWith<$Res> {
  __$$FormSubmitImplCopyWithImpl(
      _$FormSubmitImpl _value, $Res Function(_$FormSubmitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FormSubmitImpl implements _FormSubmit {
  const _$FormSubmitImpl();

  @override
  String toString() {
    return 'LoginEvent.formSubmit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormSubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePassword,
    required TResult Function() unfocusEmail,
    required TResult Function() unfocusPassword,
    required TResult Function() formSubmit,
  }) {
    return formSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePassword,
    TResult? Function()? unfocusEmail,
    TResult? Function()? unfocusPassword,
    TResult? Function()? formSubmit,
  }) {
    return formSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePassword,
    TResult Function()? unfocusEmail,
    TResult Function()? unfocusPassword,
    TResult Function()? formSubmit,
    required TResult orElse(),
  }) {
    if (formSubmit != null) {
      return formSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_UnfocusEmail value) unfocusEmail,
    required TResult Function(_UnfocusPassword value) unfocusPassword,
    required TResult Function(_FormSubmit value) formSubmit,
  }) {
    return formSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_UnfocusEmail value)? unfocusEmail,
    TResult? Function(_UnfocusPassword value)? unfocusPassword,
    TResult? Function(_FormSubmit value)? formSubmit,
  }) {
    return formSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_UnfocusEmail value)? unfocusEmail,
    TResult Function(_UnfocusPassword value)? unfocusPassword,
    TResult Function(_FormSubmit value)? formSubmit,
    required TResult orElse(),
  }) {
    if (formSubmit != null) {
      return formSubmit(this);
    }
    return orElse();
  }
}

abstract class _FormSubmit implements LoginEvent {
  const factory _FormSubmit() = _$FormSubmitImpl;
}

/// @nodoc
mixin _$LoginState {
// String? email,
// bool? isInputEmail,
// String? errorEmailMessage,
// String? password,
// bool? isInputPassword,
// String? errorPasswordMessage,
  InputState? get email => throw _privateConstructorUsedError;
  InputState? get password => throw _privateConstructorUsedError;
  bool get isFormValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call({InputState? email, InputState? password, bool isFormValid});

  $InputStateCopyWith<$Res>? get email;
  $InputStateCopyWith<$Res>? get password;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? isFormValid = null,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as InputState?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as InputState?,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InputStateCopyWith<$Res>? get email {
    if (_value.email == null) {
      return null;
    }

    return $InputStateCopyWith<$Res>(_value.email!, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InputStateCopyWith<$Res>? get password {
    if (_value.password == null) {
      return null;
    }

    return $InputStateCopyWith<$Res>(_value.password!, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InputState? email, InputState? password, bool isFormValid});

  @override
  $InputStateCopyWith<$Res>? get email;
  @override
  $InputStateCopyWith<$Res>? get password;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? isFormValid = null,
  }) {
    return _then(_$LoginStateImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as InputState?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as InputState?,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl({this.email, this.password, this.isFormValid = false});

// String? email,
// bool? isInputEmail,
// String? errorEmailMessage,
// String? password,
// bool? isInputPassword,
// String? errorPasswordMessage,
  @override
  final InputState? email;
  @override
  final InputState? password;
  @override
  @JsonKey()
  final bool isFormValid;

  @override
  String toString() {
    return 'LoginState(email: $email, password: $password, isFormValid: $isFormValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isFormValid, isFormValid) ||
                other.isFormValid == isFormValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, isFormValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final InputState? email,
      final InputState? password,
      final bool isFormValid}) = _$LoginStateImpl;

  @override // String? email,
// bool? isInputEmail,
// String? errorEmailMessage,
// String? password,
// bool? isInputPassword,
// String? errorPasswordMessage,
  InputState? get email;
  @override
  InputState? get password;
  @override
  bool get isFormValid;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
