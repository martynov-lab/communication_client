// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStateUnauthorizedImpl _$$AuthStateUnauthorizedImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthStateUnauthorizedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateUnauthorizedImplToJson(
        _$AuthStateUnauthorizedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthStateAuthorizedImpl _$$AuthStateAuthorizedImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthStateAuthorizedImpl(
      UserEntity.fromJson(json['userEntity'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateAuthorizedImplToJson(
        _$AuthStateAuthorizedImpl instance) =>
    <String, dynamic>{
      'userEntity': instance.userEntity,
      'runtimeType': instance.$type,
    };

_$AuthStateLoadingImpl _$$AuthStateLoadingImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthStateLoadingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateLoadingImplToJson(
        _$AuthStateLoadingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthStateErrorImpl _$$AuthStateErrorImplFromJson(Map<String, dynamic> json) =>
    _$AuthStateErrorImpl(
      json['error'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateErrorImplToJson(
        _$AuthStateErrorImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'runtimeType': instance.$type,
    };
