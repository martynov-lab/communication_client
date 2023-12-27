// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'unauthorized':
      return _AuthStateUnauthorized.fromJson(json);
    case 'authorized':
      return _AuthStateAuthorized.fromJson(json);
    case 'loading':
      return _AuthStateLoading.fromJson(json);
    case 'error':
      return _AuthStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnauthorized value) unauthorized,
    required TResult Function(_AuthStateAuthorized value) authorized,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateUnauthorized value)? unauthorized,
    TResult? Function(_AuthStateAuthorized value)? authorized,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnauthorized value)? unauthorized,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthStateUnauthorizedImplCopyWith<$Res> {
  factory _$$AuthStateUnauthorizedImplCopyWith(
          _$AuthStateUnauthorizedImpl value,
          $Res Function(_$AuthStateUnauthorizedImpl) then) =
      __$$AuthStateUnauthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateUnauthorizedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateUnauthorizedImpl>
    implements _$$AuthStateUnauthorizedImplCopyWith<$Res> {
  __$$AuthStateUnauthorizedImplCopyWithImpl(_$AuthStateUnauthorizedImpl _value,
      $Res Function(_$AuthStateUnauthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AuthStateUnauthorizedImpl implements _AuthStateUnauthorized {
  _$AuthStateUnauthorizedImpl({final String? $type})
      : $type = $type ?? 'unauthorized';

  factory _$AuthStateUnauthorizedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateUnauthorizedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.unauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateUnauthorizedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnauthorized value) unauthorized,
    required TResult Function(_AuthStateAuthorized value) authorized,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateError value) error,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateUnauthorized value)? unauthorized,
    TResult? Function(_AuthStateAuthorized value)? authorized,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnauthorized value)? unauthorized,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateUnauthorizedImplToJson(
      this,
    );
  }
}

abstract class _AuthStateUnauthorized implements AuthState {
  factory _AuthStateUnauthorized() = _$AuthStateUnauthorizedImpl;

  factory _AuthStateUnauthorized.fromJson(Map<String, dynamic> json) =
      _$AuthStateUnauthorizedImpl.fromJson;
}

/// @nodoc
abstract class _$$AuthStateAuthorizedImplCopyWith<$Res> {
  factory _$$AuthStateAuthorizedImplCopyWith(_$AuthStateAuthorizedImpl value,
          $Res Function(_$AuthStateAuthorizedImpl) then) =
      __$$AuthStateAuthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity userEntity});

  $UserEntityCopyWith<$Res> get userEntity;
}

/// @nodoc
class __$$AuthStateAuthorizedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateAuthorizedImpl>
    implements _$$AuthStateAuthorizedImplCopyWith<$Res> {
  __$$AuthStateAuthorizedImplCopyWithImpl(_$AuthStateAuthorizedImpl _value,
      $Res Function(_$AuthStateAuthorizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEntity = null,
  }) {
    return _then(_$AuthStateAuthorizedImpl(
      null == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get userEntity {
    return $UserEntityCopyWith<$Res>(_value.userEntity, (value) {
      return _then(_value.copyWith(userEntity: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStateAuthorizedImpl implements _AuthStateAuthorized {
  _$AuthStateAuthorizedImpl(this.userEntity, {final String? $type})
      : $type = $type ?? 'authorized';

  factory _$AuthStateAuthorizedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateAuthorizedImplFromJson(json);

  @override
  final UserEntity userEntity;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.authorized(userEntity: $userEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateAuthorizedImpl &&
            (identical(other.userEntity, userEntity) ||
                other.userEntity == userEntity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateAuthorizedImplCopyWith<_$AuthStateAuthorizedImpl> get copyWith =>
      __$$AuthStateAuthorizedImplCopyWithImpl<_$AuthStateAuthorizedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return authorized(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return authorized?.call(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(userEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnauthorized value) unauthorized,
    required TResult Function(_AuthStateAuthorized value) authorized,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateError value) error,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateUnauthorized value)? unauthorized,
    TResult? Function(_AuthStateAuthorized value)? authorized,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnauthorized value)? unauthorized,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateAuthorizedImplToJson(
      this,
    );
  }
}

abstract class _AuthStateAuthorized implements AuthState {
  factory _AuthStateAuthorized(final UserEntity userEntity) =
      _$AuthStateAuthorizedImpl;

  factory _AuthStateAuthorized.fromJson(Map<String, dynamic> json) =
      _$AuthStateAuthorizedImpl.fromJson;

  UserEntity get userEntity;
  @JsonKey(ignore: true)
  _$$AuthStateAuthorizedImplCopyWith<_$AuthStateAuthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateLoadingImplCopyWith<$Res> {
  factory _$$AuthStateLoadingImplCopyWith(_$AuthStateLoadingImpl value,
          $Res Function(_$AuthStateLoadingImpl) then) =
      __$$AuthStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLoadingImpl>
    implements _$$AuthStateLoadingImplCopyWith<$Res> {
  __$$AuthStateLoadingImplCopyWithImpl(_$AuthStateLoadingImpl _value,
      $Res Function(_$AuthStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AuthStateLoadingImpl implements _AuthStateLoading {
  _$AuthStateLoadingImpl({final String? $type}) : $type = $type ?? 'loading';

  factory _$AuthStateLoadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateLoadingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateLoadingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnauthorized value) unauthorized,
    required TResult Function(_AuthStateAuthorized value) authorized,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateUnauthorized value)? unauthorized,
    TResult? Function(_AuthStateAuthorized value)? authorized,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnauthorized value)? unauthorized,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateLoadingImplToJson(
      this,
    );
  }
}

abstract class _AuthStateLoading implements AuthState {
  factory _AuthStateLoading() = _$AuthStateLoadingImpl;

  factory _AuthStateLoading.fromJson(Map<String, dynamic> json) =
      _$AuthStateLoadingImpl.fromJson;
}

/// @nodoc
abstract class _$$AuthStateErrorImplCopyWith<$Res> {
  factory _$$AuthStateErrorImplCopyWith(_$AuthStateErrorImpl value,
          $Res Function(_$AuthStateErrorImpl) then) =
      __$$AuthStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$AuthStateErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateErrorImpl>
    implements _$$AuthStateErrorImplCopyWith<$Res> {
  __$$AuthStateErrorImplCopyWithImpl(
      _$AuthStateErrorImpl _value, $Res Function(_$AuthStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$AuthStateErrorImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStateErrorImpl implements _AuthStateError {
  _$AuthStateErrorImpl(this.error, {final String? $type})
      : $type = $type ?? 'error';

  factory _$AuthStateErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateErrorImplFromJson(json);

  @override
  final dynamic error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateErrorImplCopyWith<_$AuthStateErrorImpl> get copyWith =>
      __$$AuthStateErrorImplCopyWithImpl<_$AuthStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnauthorized value) unauthorized,
    required TResult Function(_AuthStateAuthorized value) authorized,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateUnauthorized value)? unauthorized,
    TResult? Function(_AuthStateAuthorized value)? authorized,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnauthorized value)? unauthorized,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateErrorImplToJson(
      this,
    );
  }
}

abstract class _AuthStateError implements AuthState {
  factory _AuthStateError(final dynamic error) = _$AuthStateErrorImpl;

  factory _AuthStateError.fromJson(Map<String, dynamic> json) =
      _$AuthStateErrorImpl.fromJson;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$AuthStateErrorImplCopyWith<_$AuthStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(String username, String email, String password)
        signUp,
    required TResult Function() logout,
    required TResult Function(String username, String email) userUpdate,
    required TResult Function() refreshToken,
    required TResult Function(String oldPassword, String newPassword)
        passwordUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String username, String email, String password)? signUp,
    TResult? Function()? logout,
    TResult? Function(String username, String email)? userUpdate,
    TResult? Function()? refreshToken,
    TResult? Function(String oldPassword, String newPassword)? passwordUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(String username, String email, String password)? signUp,
    TResult Function()? logout,
    TResult Function(String username, String email)? userUpdate,
    TResult Function()? refreshToken,
    TResult Function(String oldPassword, String newPassword)? passwordUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInAuthEvent value) signIn,
    required TResult Function(_SignUpAuthEvent value) signUp,
    required TResult Function(_LogoutAuthEvent value) logout,
    required TResult Function(_UserUpdateAuthEvent value) userUpdate,
    required TResult Function(_RefreshTokenAuthEvent value) refreshToken,
    required TResult Function(_PasswordUpdateAuthEvent value) passwordUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInAuthEvent value)? signIn,
    TResult? Function(_SignUpAuthEvent value)? signUp,
    TResult? Function(_LogoutAuthEvent value)? logout,
    TResult? Function(_UserUpdateAuthEvent value)? userUpdate,
    TResult? Function(_RefreshTokenAuthEvent value)? refreshToken,
    TResult? Function(_PasswordUpdateAuthEvent value)? passwordUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInAuthEvent value)? signIn,
    TResult Function(_SignUpAuthEvent value)? signUp,
    TResult Function(_LogoutAuthEvent value)? logout,
    TResult Function(_UserUpdateAuthEvent value)? userUpdate,
    TResult Function(_RefreshTokenAuthEvent value)? refreshToken,
    TResult Function(_PasswordUpdateAuthEvent value)? passwordUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInAuthEventImplCopyWith<$Res> {
  factory _$$SignInAuthEventImplCopyWith(_$SignInAuthEventImpl value,
          $Res Function(_$SignInAuthEventImpl) then) =
      __$$SignInAuthEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInAuthEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInAuthEventImpl>
    implements _$$SignInAuthEventImplCopyWith<$Res> {
  __$$SignInAuthEventImplCopyWithImpl(
      _$SignInAuthEventImpl _value, $Res Function(_$SignInAuthEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInAuthEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInAuthEventImpl implements _SignInAuthEvent {
  const _$SignInAuthEventImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInAuthEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInAuthEventImplCopyWith<_$SignInAuthEventImpl> get copyWith =>
      __$$SignInAuthEventImplCopyWithImpl<_$SignInAuthEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(String username, String email, String password)
        signUp,
    required TResult Function() logout,
    required TResult Function(String username, String email) userUpdate,
    required TResult Function() refreshToken,
    required TResult Function(String oldPassword, String newPassword)
        passwordUpdate,
  }) {
    return signIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String username, String email, String password)? signUp,
    TResult? Function()? logout,
    TResult? Function(String username, String email)? userUpdate,
    TResult? Function()? refreshToken,
    TResult? Function(String oldPassword, String newPassword)? passwordUpdate,
  }) {
    return signIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(String username, String email, String password)? signUp,
    TResult Function()? logout,
    TResult Function(String username, String email)? userUpdate,
    TResult Function()? refreshToken,
    TResult Function(String oldPassword, String newPassword)? passwordUpdate,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInAuthEvent value) signIn,
    required TResult Function(_SignUpAuthEvent value) signUp,
    required TResult Function(_LogoutAuthEvent value) logout,
    required TResult Function(_UserUpdateAuthEvent value) userUpdate,
    required TResult Function(_RefreshTokenAuthEvent value) refreshToken,
    required TResult Function(_PasswordUpdateAuthEvent value) passwordUpdate,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInAuthEvent value)? signIn,
    TResult? Function(_SignUpAuthEvent value)? signUp,
    TResult? Function(_LogoutAuthEvent value)? logout,
    TResult? Function(_UserUpdateAuthEvent value)? userUpdate,
    TResult? Function(_RefreshTokenAuthEvent value)? refreshToken,
    TResult? Function(_PasswordUpdateAuthEvent value)? passwordUpdate,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInAuthEvent value)? signIn,
    TResult Function(_SignUpAuthEvent value)? signUp,
    TResult Function(_LogoutAuthEvent value)? logout,
    TResult Function(_UserUpdateAuthEvent value)? userUpdate,
    TResult Function(_RefreshTokenAuthEvent value)? refreshToken,
    TResult Function(_PasswordUpdateAuthEvent value)? passwordUpdate,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignInAuthEvent implements AuthEvent {
  const factory _SignInAuthEvent(
      {required final String email,
      required final String password}) = _$SignInAuthEventImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInAuthEventImplCopyWith<_$SignInAuthEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpAuthEventImplCopyWith<$Res> {
  factory _$$SignUpAuthEventImplCopyWith(_$SignUpAuthEventImpl value,
          $Res Function(_$SignUpAuthEventImpl) then) =
      __$$SignUpAuthEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String email, String password});
}

/// @nodoc
class __$$SignUpAuthEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpAuthEventImpl>
    implements _$$SignUpAuthEventImplCopyWith<$Res> {
  __$$SignUpAuthEventImplCopyWithImpl(
      _$SignUpAuthEventImpl _value, $Res Function(_$SignUpAuthEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignUpAuthEventImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpAuthEventImpl implements _SignUpAuthEvent {
  const _$SignUpAuthEventImpl(
      {required this.username, required this.email, required this.password});

  @override
  final String username;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signUp(username: $username, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpAuthEventImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpAuthEventImplCopyWith<_$SignUpAuthEventImpl> get copyWith =>
      __$$SignUpAuthEventImplCopyWithImpl<_$SignUpAuthEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(String username, String email, String password)
        signUp,
    required TResult Function() logout,
    required TResult Function(String username, String email) userUpdate,
    required TResult Function() refreshToken,
    required TResult Function(String oldPassword, String newPassword)
        passwordUpdate,
  }) {
    return signUp(username, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String username, String email, String password)? signUp,
    TResult? Function()? logout,
    TResult? Function(String username, String email)? userUpdate,
    TResult? Function()? refreshToken,
    TResult? Function(String oldPassword, String newPassword)? passwordUpdate,
  }) {
    return signUp?.call(username, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(String username, String email, String password)? signUp,
    TResult Function()? logout,
    TResult Function(String username, String email)? userUpdate,
    TResult Function()? refreshToken,
    TResult Function(String oldPassword, String newPassword)? passwordUpdate,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(username, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInAuthEvent value) signIn,
    required TResult Function(_SignUpAuthEvent value) signUp,
    required TResult Function(_LogoutAuthEvent value) logout,
    required TResult Function(_UserUpdateAuthEvent value) userUpdate,
    required TResult Function(_RefreshTokenAuthEvent value) refreshToken,
    required TResult Function(_PasswordUpdateAuthEvent value) passwordUpdate,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInAuthEvent value)? signIn,
    TResult? Function(_SignUpAuthEvent value)? signUp,
    TResult? Function(_LogoutAuthEvent value)? logout,
    TResult? Function(_UserUpdateAuthEvent value)? userUpdate,
    TResult? Function(_RefreshTokenAuthEvent value)? refreshToken,
    TResult? Function(_PasswordUpdateAuthEvent value)? passwordUpdate,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInAuthEvent value)? signIn,
    TResult Function(_SignUpAuthEvent value)? signUp,
    TResult Function(_LogoutAuthEvent value)? logout,
    TResult Function(_UserUpdateAuthEvent value)? userUpdate,
    TResult Function(_RefreshTokenAuthEvent value)? refreshToken,
    TResult Function(_PasswordUpdateAuthEvent value)? passwordUpdate,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUpAuthEvent implements AuthEvent {
  const factory _SignUpAuthEvent(
      {required final String username,
      required final String email,
      required final String password}) = _$SignUpAuthEventImpl;

  String get username;
  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignUpAuthEventImplCopyWith<_$SignUpAuthEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutAuthEventImplCopyWith<$Res> {
  factory _$$LogoutAuthEventImplCopyWith(_$LogoutAuthEventImpl value,
          $Res Function(_$LogoutAuthEventImpl) then) =
      __$$LogoutAuthEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutAuthEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutAuthEventImpl>
    implements _$$LogoutAuthEventImplCopyWith<$Res> {
  __$$LogoutAuthEventImplCopyWithImpl(
      _$LogoutAuthEventImpl _value, $Res Function(_$LogoutAuthEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutAuthEventImpl implements _LogoutAuthEvent {
  const _$LogoutAuthEventImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutAuthEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(String username, String email, String password)
        signUp,
    required TResult Function() logout,
    required TResult Function(String username, String email) userUpdate,
    required TResult Function() refreshToken,
    required TResult Function(String oldPassword, String newPassword)
        passwordUpdate,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String username, String email, String password)? signUp,
    TResult? Function()? logout,
    TResult? Function(String username, String email)? userUpdate,
    TResult? Function()? refreshToken,
    TResult? Function(String oldPassword, String newPassword)? passwordUpdate,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(String username, String email, String password)? signUp,
    TResult Function()? logout,
    TResult Function(String username, String email)? userUpdate,
    TResult Function()? refreshToken,
    TResult Function(String oldPassword, String newPassword)? passwordUpdate,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInAuthEvent value) signIn,
    required TResult Function(_SignUpAuthEvent value) signUp,
    required TResult Function(_LogoutAuthEvent value) logout,
    required TResult Function(_UserUpdateAuthEvent value) userUpdate,
    required TResult Function(_RefreshTokenAuthEvent value) refreshToken,
    required TResult Function(_PasswordUpdateAuthEvent value) passwordUpdate,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInAuthEvent value)? signIn,
    TResult? Function(_SignUpAuthEvent value)? signUp,
    TResult? Function(_LogoutAuthEvent value)? logout,
    TResult? Function(_UserUpdateAuthEvent value)? userUpdate,
    TResult? Function(_RefreshTokenAuthEvent value)? refreshToken,
    TResult? Function(_PasswordUpdateAuthEvent value)? passwordUpdate,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInAuthEvent value)? signIn,
    TResult Function(_SignUpAuthEvent value)? signUp,
    TResult Function(_LogoutAuthEvent value)? logout,
    TResult Function(_UserUpdateAuthEvent value)? userUpdate,
    TResult Function(_RefreshTokenAuthEvent value)? refreshToken,
    TResult Function(_PasswordUpdateAuthEvent value)? passwordUpdate,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _LogoutAuthEvent implements AuthEvent {
  const factory _LogoutAuthEvent() = _$LogoutAuthEventImpl;
}

/// @nodoc
abstract class _$$UserUpdateAuthEventImplCopyWith<$Res> {
  factory _$$UserUpdateAuthEventImplCopyWith(_$UserUpdateAuthEventImpl value,
          $Res Function(_$UserUpdateAuthEventImpl) then) =
      __$$UserUpdateAuthEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String email});
}

/// @nodoc
class __$$UserUpdateAuthEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserUpdateAuthEventImpl>
    implements _$$UserUpdateAuthEventImplCopyWith<$Res> {
  __$$UserUpdateAuthEventImplCopyWithImpl(_$UserUpdateAuthEventImpl _value,
      $Res Function(_$UserUpdateAuthEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
  }) {
    return _then(_$UserUpdateAuthEventImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserUpdateAuthEventImpl implements _UserUpdateAuthEvent {
  const _$UserUpdateAuthEventImpl(
      {required this.username, required this.email});

  @override
  final String username;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.userUpdate(username: $username, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdateAuthEventImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateAuthEventImplCopyWith<_$UserUpdateAuthEventImpl> get copyWith =>
      __$$UserUpdateAuthEventImplCopyWithImpl<_$UserUpdateAuthEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(String username, String email, String password)
        signUp,
    required TResult Function() logout,
    required TResult Function(String username, String email) userUpdate,
    required TResult Function() refreshToken,
    required TResult Function(String oldPassword, String newPassword)
        passwordUpdate,
  }) {
    return userUpdate(username, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String username, String email, String password)? signUp,
    TResult? Function()? logout,
    TResult? Function(String username, String email)? userUpdate,
    TResult? Function()? refreshToken,
    TResult? Function(String oldPassword, String newPassword)? passwordUpdate,
  }) {
    return userUpdate?.call(username, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(String username, String email, String password)? signUp,
    TResult Function()? logout,
    TResult Function(String username, String email)? userUpdate,
    TResult Function()? refreshToken,
    TResult Function(String oldPassword, String newPassword)? passwordUpdate,
    required TResult orElse(),
  }) {
    if (userUpdate != null) {
      return userUpdate(username, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInAuthEvent value) signIn,
    required TResult Function(_SignUpAuthEvent value) signUp,
    required TResult Function(_LogoutAuthEvent value) logout,
    required TResult Function(_UserUpdateAuthEvent value) userUpdate,
    required TResult Function(_RefreshTokenAuthEvent value) refreshToken,
    required TResult Function(_PasswordUpdateAuthEvent value) passwordUpdate,
  }) {
    return userUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInAuthEvent value)? signIn,
    TResult? Function(_SignUpAuthEvent value)? signUp,
    TResult? Function(_LogoutAuthEvent value)? logout,
    TResult? Function(_UserUpdateAuthEvent value)? userUpdate,
    TResult? Function(_RefreshTokenAuthEvent value)? refreshToken,
    TResult? Function(_PasswordUpdateAuthEvent value)? passwordUpdate,
  }) {
    return userUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInAuthEvent value)? signIn,
    TResult Function(_SignUpAuthEvent value)? signUp,
    TResult Function(_LogoutAuthEvent value)? logout,
    TResult Function(_UserUpdateAuthEvent value)? userUpdate,
    TResult Function(_RefreshTokenAuthEvent value)? refreshToken,
    TResult Function(_PasswordUpdateAuthEvent value)? passwordUpdate,
    required TResult orElse(),
  }) {
    if (userUpdate != null) {
      return userUpdate(this);
    }
    return orElse();
  }
}

abstract class _UserUpdateAuthEvent implements AuthEvent {
  const factory _UserUpdateAuthEvent(
      {required final String username,
      required final String email}) = _$UserUpdateAuthEventImpl;

  String get username;
  String get email;
  @JsonKey(ignore: true)
  _$$UserUpdateAuthEventImplCopyWith<_$UserUpdateAuthEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshTokenAuthEventImplCopyWith<$Res> {
  factory _$$RefreshTokenAuthEventImplCopyWith(
          _$RefreshTokenAuthEventImpl value,
          $Res Function(_$RefreshTokenAuthEventImpl) then) =
      __$$RefreshTokenAuthEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshTokenAuthEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RefreshTokenAuthEventImpl>
    implements _$$RefreshTokenAuthEventImplCopyWith<$Res> {
  __$$RefreshTokenAuthEventImplCopyWithImpl(_$RefreshTokenAuthEventImpl _value,
      $Res Function(_$RefreshTokenAuthEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshTokenAuthEventImpl implements _RefreshTokenAuthEvent {
  const _$RefreshTokenAuthEventImpl();

  @override
  String toString() {
    return 'AuthEvent.refreshToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenAuthEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(String username, String email, String password)
        signUp,
    required TResult Function() logout,
    required TResult Function(String username, String email) userUpdate,
    required TResult Function() refreshToken,
    required TResult Function(String oldPassword, String newPassword)
        passwordUpdate,
  }) {
    return refreshToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String username, String email, String password)? signUp,
    TResult? Function()? logout,
    TResult? Function(String username, String email)? userUpdate,
    TResult? Function()? refreshToken,
    TResult? Function(String oldPassword, String newPassword)? passwordUpdate,
  }) {
    return refreshToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(String username, String email, String password)? signUp,
    TResult Function()? logout,
    TResult Function(String username, String email)? userUpdate,
    TResult Function()? refreshToken,
    TResult Function(String oldPassword, String newPassword)? passwordUpdate,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInAuthEvent value) signIn,
    required TResult Function(_SignUpAuthEvent value) signUp,
    required TResult Function(_LogoutAuthEvent value) logout,
    required TResult Function(_UserUpdateAuthEvent value) userUpdate,
    required TResult Function(_RefreshTokenAuthEvent value) refreshToken,
    required TResult Function(_PasswordUpdateAuthEvent value) passwordUpdate,
  }) {
    return refreshToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInAuthEvent value)? signIn,
    TResult? Function(_SignUpAuthEvent value)? signUp,
    TResult? Function(_LogoutAuthEvent value)? logout,
    TResult? Function(_UserUpdateAuthEvent value)? userUpdate,
    TResult? Function(_RefreshTokenAuthEvent value)? refreshToken,
    TResult? Function(_PasswordUpdateAuthEvent value)? passwordUpdate,
  }) {
    return refreshToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInAuthEvent value)? signIn,
    TResult Function(_SignUpAuthEvent value)? signUp,
    TResult Function(_LogoutAuthEvent value)? logout,
    TResult Function(_UserUpdateAuthEvent value)? userUpdate,
    TResult Function(_RefreshTokenAuthEvent value)? refreshToken,
    TResult Function(_PasswordUpdateAuthEvent value)? passwordUpdate,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken(this);
    }
    return orElse();
  }
}

abstract class _RefreshTokenAuthEvent implements AuthEvent {
  const factory _RefreshTokenAuthEvent() = _$RefreshTokenAuthEventImpl;
}

/// @nodoc
abstract class _$$PasswordUpdateAuthEventImplCopyWith<$Res> {
  factory _$$PasswordUpdateAuthEventImplCopyWith(
          _$PasswordUpdateAuthEventImpl value,
          $Res Function(_$PasswordUpdateAuthEventImpl) then) =
      __$$PasswordUpdateAuthEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class __$$PasswordUpdateAuthEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PasswordUpdateAuthEventImpl>
    implements _$$PasswordUpdateAuthEventImplCopyWith<$Res> {
  __$$PasswordUpdateAuthEventImplCopyWithImpl(
      _$PasswordUpdateAuthEventImpl _value,
      $Res Function(_$PasswordUpdateAuthEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_$PasswordUpdateAuthEventImpl(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordUpdateAuthEventImpl implements _PasswordUpdateAuthEvent {
  const _$PasswordUpdateAuthEventImpl(
      {required this.oldPassword, required this.newPassword});

  @override
  final String oldPassword;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'AuthEvent.passwordUpdate(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordUpdateAuthEventImpl &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordUpdateAuthEventImplCopyWith<_$PasswordUpdateAuthEventImpl>
      get copyWith => __$$PasswordUpdateAuthEventImplCopyWithImpl<
          _$PasswordUpdateAuthEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(String username, String email, String password)
        signUp,
    required TResult Function() logout,
    required TResult Function(String username, String email) userUpdate,
    required TResult Function() refreshToken,
    required TResult Function(String oldPassword, String newPassword)
        passwordUpdate,
  }) {
    return passwordUpdate(oldPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String username, String email, String password)? signUp,
    TResult? Function()? logout,
    TResult? Function(String username, String email)? userUpdate,
    TResult? Function()? refreshToken,
    TResult? Function(String oldPassword, String newPassword)? passwordUpdate,
  }) {
    return passwordUpdate?.call(oldPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(String username, String email, String password)? signUp,
    TResult Function()? logout,
    TResult Function(String username, String email)? userUpdate,
    TResult Function()? refreshToken,
    TResult Function(String oldPassword, String newPassword)? passwordUpdate,
    required TResult orElse(),
  }) {
    if (passwordUpdate != null) {
      return passwordUpdate(oldPassword, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInAuthEvent value) signIn,
    required TResult Function(_SignUpAuthEvent value) signUp,
    required TResult Function(_LogoutAuthEvent value) logout,
    required TResult Function(_UserUpdateAuthEvent value) userUpdate,
    required TResult Function(_RefreshTokenAuthEvent value) refreshToken,
    required TResult Function(_PasswordUpdateAuthEvent value) passwordUpdate,
  }) {
    return passwordUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInAuthEvent value)? signIn,
    TResult? Function(_SignUpAuthEvent value)? signUp,
    TResult? Function(_LogoutAuthEvent value)? logout,
    TResult? Function(_UserUpdateAuthEvent value)? userUpdate,
    TResult? Function(_RefreshTokenAuthEvent value)? refreshToken,
    TResult? Function(_PasswordUpdateAuthEvent value)? passwordUpdate,
  }) {
    return passwordUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInAuthEvent value)? signIn,
    TResult Function(_SignUpAuthEvent value)? signUp,
    TResult Function(_LogoutAuthEvent value)? logout,
    TResult Function(_UserUpdateAuthEvent value)? userUpdate,
    TResult Function(_RefreshTokenAuthEvent value)? refreshToken,
    TResult Function(_PasswordUpdateAuthEvent value)? passwordUpdate,
    required TResult orElse(),
  }) {
    if (passwordUpdate != null) {
      return passwordUpdate(this);
    }
    return orElse();
  }
}

abstract class _PasswordUpdateAuthEvent implements AuthEvent {
  const factory _PasswordUpdateAuthEvent(
      {required final String oldPassword,
      required final String newPassword}) = _$PasswordUpdateAuthEventImpl;

  String get oldPassword;
  String get newPassword;
  @JsonKey(ignore: true)
  _$$PasswordUpdateAuthEventImplCopyWith<_$PasswordUpdateAuthEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
