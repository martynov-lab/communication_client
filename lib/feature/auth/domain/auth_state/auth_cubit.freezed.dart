// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

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
