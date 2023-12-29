// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
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
    required TResult Function(_ChangeEmailRegisterEvent value) changeEmail,
    required TResult Function(_ChangePasswordRegisterEvent value)
        changePassword,
    required TResult Function(_UnfocusEmailRegisterEvent value) unfocusEmail,
    required TResult Function(_UnfocusPasswordRegisterEvent value)
        unfocusPassword,
    required TResult Function(_FormSubmitRegisterEvent value) formSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmailRegisterEvent value)? changeEmail,
    TResult? Function(_ChangePasswordRegisterEvent value)? changePassword,
    TResult? Function(_UnfocusEmailRegisterEvent value)? unfocusEmail,
    TResult? Function(_UnfocusPasswordRegisterEvent value)? unfocusPassword,
    TResult? Function(_FormSubmitRegisterEvent value)? formSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmailRegisterEvent value)? changeEmail,
    TResult Function(_ChangePasswordRegisterEvent value)? changePassword,
    TResult Function(_UnfocusEmailRegisterEvent value)? unfocusEmail,
    TResult Function(_UnfocusPasswordRegisterEvent value)? unfocusPassword,
    TResult Function(_FormSubmitRegisterEvent value)? formSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeEmailRegisterEventImplCopyWith<$Res> {
  factory _$$ChangeEmailRegisterEventImplCopyWith(
          _$ChangeEmailRegisterEventImpl value,
          $Res Function(_$ChangeEmailRegisterEventImpl) then) =
      __$$ChangeEmailRegisterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ChangeEmailRegisterEventImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$ChangeEmailRegisterEventImpl>
    implements _$$ChangeEmailRegisterEventImplCopyWith<$Res> {
  __$$ChangeEmailRegisterEventImplCopyWithImpl(
      _$ChangeEmailRegisterEventImpl _value,
      $Res Function(_$ChangeEmailRegisterEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ChangeEmailRegisterEventImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeEmailRegisterEventImpl implements _ChangeEmailRegisterEvent {
  const _$ChangeEmailRegisterEventImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'RegisterEvent.changeEmail(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeEmailRegisterEventImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeEmailRegisterEventImplCopyWith<_$ChangeEmailRegisterEventImpl>
      get copyWith => __$$ChangeEmailRegisterEventImplCopyWithImpl<
          _$ChangeEmailRegisterEventImpl>(this, _$identity);

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
    required TResult Function(_ChangeEmailRegisterEvent value) changeEmail,
    required TResult Function(_ChangePasswordRegisterEvent value)
        changePassword,
    required TResult Function(_UnfocusEmailRegisterEvent value) unfocusEmail,
    required TResult Function(_UnfocusPasswordRegisterEvent value)
        unfocusPassword,
    required TResult Function(_FormSubmitRegisterEvent value) formSubmit,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmailRegisterEvent value)? changeEmail,
    TResult? Function(_ChangePasswordRegisterEvent value)? changePassword,
    TResult? Function(_UnfocusEmailRegisterEvent value)? unfocusEmail,
    TResult? Function(_UnfocusPasswordRegisterEvent value)? unfocusPassword,
    TResult? Function(_FormSubmitRegisterEvent value)? formSubmit,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmailRegisterEvent value)? changeEmail,
    TResult Function(_ChangePasswordRegisterEvent value)? changePassword,
    TResult Function(_UnfocusEmailRegisterEvent value)? unfocusEmail,
    TResult Function(_UnfocusPasswordRegisterEvent value)? unfocusPassword,
    TResult Function(_FormSubmitRegisterEvent value)? formSubmit,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class _ChangeEmailRegisterEvent implements RegisterEvent {
  const factory _ChangeEmailRegisterEvent(final String value) =
      _$ChangeEmailRegisterEventImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$ChangeEmailRegisterEventImplCopyWith<_$ChangeEmailRegisterEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordRegisterEventImplCopyWith<$Res> {
  factory _$$ChangePasswordRegisterEventImplCopyWith(
          _$ChangePasswordRegisterEventImpl value,
          $Res Function(_$ChangePasswordRegisterEventImpl) then) =
      __$$ChangePasswordRegisterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ChangePasswordRegisterEventImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$ChangePasswordRegisterEventImpl>
    implements _$$ChangePasswordRegisterEventImplCopyWith<$Res> {
  __$$ChangePasswordRegisterEventImplCopyWithImpl(
      _$ChangePasswordRegisterEventImpl _value,
      $Res Function(_$ChangePasswordRegisterEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ChangePasswordRegisterEventImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePasswordRegisterEventImpl
    implements _ChangePasswordRegisterEvent {
  const _$ChangePasswordRegisterEventImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'RegisterEvent.changePassword(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordRegisterEventImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordRegisterEventImplCopyWith<_$ChangePasswordRegisterEventImpl>
      get copyWith => __$$ChangePasswordRegisterEventImplCopyWithImpl<
          _$ChangePasswordRegisterEventImpl>(this, _$identity);

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
    required TResult Function(_ChangeEmailRegisterEvent value) changeEmail,
    required TResult Function(_ChangePasswordRegisterEvent value)
        changePassword,
    required TResult Function(_UnfocusEmailRegisterEvent value) unfocusEmail,
    required TResult Function(_UnfocusPasswordRegisterEvent value)
        unfocusPassword,
    required TResult Function(_FormSubmitRegisterEvent value) formSubmit,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmailRegisterEvent value)? changeEmail,
    TResult? Function(_ChangePasswordRegisterEvent value)? changePassword,
    TResult? Function(_UnfocusEmailRegisterEvent value)? unfocusEmail,
    TResult? Function(_UnfocusPasswordRegisterEvent value)? unfocusPassword,
    TResult? Function(_FormSubmitRegisterEvent value)? formSubmit,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmailRegisterEvent value)? changeEmail,
    TResult Function(_ChangePasswordRegisterEvent value)? changePassword,
    TResult Function(_UnfocusEmailRegisterEvent value)? unfocusEmail,
    TResult Function(_UnfocusPasswordRegisterEvent value)? unfocusPassword,
    TResult Function(_FormSubmitRegisterEvent value)? formSubmit,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePasswordRegisterEvent implements RegisterEvent {
  const factory _ChangePasswordRegisterEvent(final String value) =
      _$ChangePasswordRegisterEventImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$ChangePasswordRegisterEventImplCopyWith<_$ChangePasswordRegisterEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnfocusEmailRegisterEventImplCopyWith<$Res> {
  factory _$$UnfocusEmailRegisterEventImplCopyWith(
          _$UnfocusEmailRegisterEventImpl value,
          $Res Function(_$UnfocusEmailRegisterEventImpl) then) =
      __$$UnfocusEmailRegisterEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnfocusEmailRegisterEventImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$UnfocusEmailRegisterEventImpl>
    implements _$$UnfocusEmailRegisterEventImplCopyWith<$Res> {
  __$$UnfocusEmailRegisterEventImplCopyWithImpl(
      _$UnfocusEmailRegisterEventImpl _value,
      $Res Function(_$UnfocusEmailRegisterEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnfocusEmailRegisterEventImpl implements _UnfocusEmailRegisterEvent {
  const _$UnfocusEmailRegisterEventImpl();

  @override
  String toString() {
    return 'RegisterEvent.unfocusEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnfocusEmailRegisterEventImpl);
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
    required TResult Function(_ChangeEmailRegisterEvent value) changeEmail,
    required TResult Function(_ChangePasswordRegisterEvent value)
        changePassword,
    required TResult Function(_UnfocusEmailRegisterEvent value) unfocusEmail,
    required TResult Function(_UnfocusPasswordRegisterEvent value)
        unfocusPassword,
    required TResult Function(_FormSubmitRegisterEvent value) formSubmit,
  }) {
    return unfocusEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmailRegisterEvent value)? changeEmail,
    TResult? Function(_ChangePasswordRegisterEvent value)? changePassword,
    TResult? Function(_UnfocusEmailRegisterEvent value)? unfocusEmail,
    TResult? Function(_UnfocusPasswordRegisterEvent value)? unfocusPassword,
    TResult? Function(_FormSubmitRegisterEvent value)? formSubmit,
  }) {
    return unfocusEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmailRegisterEvent value)? changeEmail,
    TResult Function(_ChangePasswordRegisterEvent value)? changePassword,
    TResult Function(_UnfocusEmailRegisterEvent value)? unfocusEmail,
    TResult Function(_UnfocusPasswordRegisterEvent value)? unfocusPassword,
    TResult Function(_FormSubmitRegisterEvent value)? formSubmit,
    required TResult orElse(),
  }) {
    if (unfocusEmail != null) {
      return unfocusEmail(this);
    }
    return orElse();
  }
}

abstract class _UnfocusEmailRegisterEvent implements RegisterEvent {
  const factory _UnfocusEmailRegisterEvent() = _$UnfocusEmailRegisterEventImpl;
}

/// @nodoc
abstract class _$$UnfocusPasswordRegisterEventImplCopyWith<$Res> {
  factory _$$UnfocusPasswordRegisterEventImplCopyWith(
          _$UnfocusPasswordRegisterEventImpl value,
          $Res Function(_$UnfocusPasswordRegisterEventImpl) then) =
      __$$UnfocusPasswordRegisterEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnfocusPasswordRegisterEventImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res,
        _$UnfocusPasswordRegisterEventImpl>
    implements _$$UnfocusPasswordRegisterEventImplCopyWith<$Res> {
  __$$UnfocusPasswordRegisterEventImplCopyWithImpl(
      _$UnfocusPasswordRegisterEventImpl _value,
      $Res Function(_$UnfocusPasswordRegisterEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnfocusPasswordRegisterEventImpl
    implements _UnfocusPasswordRegisterEvent {
  const _$UnfocusPasswordRegisterEventImpl();

  @override
  String toString() {
    return 'RegisterEvent.unfocusPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnfocusPasswordRegisterEventImpl);
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
    required TResult Function(_ChangeEmailRegisterEvent value) changeEmail,
    required TResult Function(_ChangePasswordRegisterEvent value)
        changePassword,
    required TResult Function(_UnfocusEmailRegisterEvent value) unfocusEmail,
    required TResult Function(_UnfocusPasswordRegisterEvent value)
        unfocusPassword,
    required TResult Function(_FormSubmitRegisterEvent value) formSubmit,
  }) {
    return unfocusPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmailRegisterEvent value)? changeEmail,
    TResult? Function(_ChangePasswordRegisterEvent value)? changePassword,
    TResult? Function(_UnfocusEmailRegisterEvent value)? unfocusEmail,
    TResult? Function(_UnfocusPasswordRegisterEvent value)? unfocusPassword,
    TResult? Function(_FormSubmitRegisterEvent value)? formSubmit,
  }) {
    return unfocusPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmailRegisterEvent value)? changeEmail,
    TResult Function(_ChangePasswordRegisterEvent value)? changePassword,
    TResult Function(_UnfocusEmailRegisterEvent value)? unfocusEmail,
    TResult Function(_UnfocusPasswordRegisterEvent value)? unfocusPassword,
    TResult Function(_FormSubmitRegisterEvent value)? formSubmit,
    required TResult orElse(),
  }) {
    if (unfocusPassword != null) {
      return unfocusPassword(this);
    }
    return orElse();
  }
}

abstract class _UnfocusPasswordRegisterEvent implements RegisterEvent {
  const factory _UnfocusPasswordRegisterEvent() =
      _$UnfocusPasswordRegisterEventImpl;
}

/// @nodoc
abstract class _$$FormSubmitRegisterEventImplCopyWith<$Res> {
  factory _$$FormSubmitRegisterEventImplCopyWith(
          _$FormSubmitRegisterEventImpl value,
          $Res Function(_$FormSubmitRegisterEventImpl) then) =
      __$$FormSubmitRegisterEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormSubmitRegisterEventImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$FormSubmitRegisterEventImpl>
    implements _$$FormSubmitRegisterEventImplCopyWith<$Res> {
  __$$FormSubmitRegisterEventImplCopyWithImpl(
      _$FormSubmitRegisterEventImpl _value,
      $Res Function(_$FormSubmitRegisterEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FormSubmitRegisterEventImpl implements _FormSubmitRegisterEvent {
  const _$FormSubmitRegisterEventImpl();

  @override
  String toString() {
    return 'RegisterEvent.formSubmit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormSubmitRegisterEventImpl);
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
    required TResult Function(_ChangeEmailRegisterEvent value) changeEmail,
    required TResult Function(_ChangePasswordRegisterEvent value)
        changePassword,
    required TResult Function(_UnfocusEmailRegisterEvent value) unfocusEmail,
    required TResult Function(_UnfocusPasswordRegisterEvent value)
        unfocusPassword,
    required TResult Function(_FormSubmitRegisterEvent value) formSubmit,
  }) {
    return formSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmailRegisterEvent value)? changeEmail,
    TResult? Function(_ChangePasswordRegisterEvent value)? changePassword,
    TResult? Function(_UnfocusEmailRegisterEvent value)? unfocusEmail,
    TResult? Function(_UnfocusPasswordRegisterEvent value)? unfocusPassword,
    TResult? Function(_FormSubmitRegisterEvent value)? formSubmit,
  }) {
    return formSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmailRegisterEvent value)? changeEmail,
    TResult Function(_ChangePasswordRegisterEvent value)? changePassword,
    TResult Function(_UnfocusEmailRegisterEvent value)? unfocusEmail,
    TResult Function(_UnfocusPasswordRegisterEvent value)? unfocusPassword,
    TResult Function(_FormSubmitRegisterEvent value)? formSubmit,
    required TResult orElse(),
  }) {
    if (formSubmit != null) {
      return formSubmit(this);
    }
    return orElse();
  }
}

abstract class _FormSubmitRegisterEvent implements RegisterEvent {
  const factory _FormSubmitRegisterEvent() = _$FormSubmitRegisterEventImpl;
}

/// @nodoc
mixin _$RegisterState {
  InputState? get email => throw _privateConstructorUsedError;
  InputState? get password => throw _privateConstructorUsedError;
  bool get isFormValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call({InputState? email, InputState? password, bool isFormValid});

  $InputStateCopyWith<$Res>? get email;
  $InputStateCopyWith<$Res>? get password;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

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
abstract class _$$RegisterStateImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterStateImplCopyWith(
          _$RegisterStateImpl value, $Res Function(_$RegisterStateImpl) then) =
      __$$RegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InputState? email, InputState? password, bool isFormValid});

  @override
  $InputStateCopyWith<$Res>? get email;
  @override
  $InputStateCopyWith<$Res>? get password;
}

/// @nodoc
class __$$RegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateImpl>
    implements _$$RegisterStateImplCopyWith<$Res> {
  __$$RegisterStateImplCopyWithImpl(
      _$RegisterStateImpl _value, $Res Function(_$RegisterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? isFormValid = null,
  }) {
    return _then(_$RegisterStateImpl(
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

class _$RegisterStateImpl implements _RegisterState {
  const _$RegisterStateImpl(
      {this.email, this.password, this.isFormValid = false});

  @override
  final InputState? email;
  @override
  final InputState? password;
  @override
  @JsonKey()
  final bool isFormValid;

  @override
  String toString() {
    return 'RegisterState(email: $email, password: $password, isFormValid: $isFormValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateImpl &&
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
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      __$$RegisterStateImplCopyWithImpl<_$RegisterStateImpl>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {final InputState? email,
      final InputState? password,
      final bool isFormValid}) = _$RegisterStateImpl;

  @override
  InputState? get email;
  @override
  InputState? get password;
  @override
  bool get isFormValid;
  @override
  @JsonKey(ignore: true)
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
