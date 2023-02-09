// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthStateUnauthorized _$$_AuthStateUnauthorizedFromJson(
        Map<String, dynamic> json) =>
    _$_AuthStateUnauthorized(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AuthStateUnauthorizedToJson(
        _$_AuthStateUnauthorized instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_AuthStateAuthorized _$$_AuthStateAuthorizedFromJson(
        Map<String, dynamic> json) =>
    _$_AuthStateAuthorized(
      UserEntity.fromJson(json['userEntity'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AuthStateAuthorizedToJson(
        _$_AuthStateAuthorized instance) =>
    <String, dynamic>{
      'userEntity': instance.userEntity,
      'runtimeType': instance.$type,
    };

_$_AuthStateLoading _$$_AuthStateLoadingFromJson(Map<String, dynamic> json) =>
    _$_AuthStateLoading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AuthStateLoadingToJson(_$_AuthStateLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_AuthStateError _$$_AuthStateErrorFromJson(Map<String, dynamic> json) =>
    _$_AuthStateError(
      json['error'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AuthStateErrorToJson(_$_AuthStateError instance) =>
    <String, dynamic>{
      'error': instance.error,
      'runtimeType': instance.$type,
    };
