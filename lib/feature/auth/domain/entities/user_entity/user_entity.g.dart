// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntityImpl _$$UserEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserEntityImpl(
      userId: json['userId'] as String,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      firstname: json['firstname'] as String?,
      surname: json['surname'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      externalAvatarUrl: json['externalAvatarUrl'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$UserEntityImplToJson(_$UserEntityImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'email': instance.email,
      'firstname': instance.firstname,
      'surname': instance.surname,
      'avatarUrl': instance.avatarUrl,
      'externalAvatarUrl': instance.externalAvatarUrl,
      'phoneNumber': instance.phoneNumber,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
