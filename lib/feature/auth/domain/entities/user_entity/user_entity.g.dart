// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntity _$$_UserEntityFromJson(Map<String, dynamic> json) =>
    _$_UserEntity(
      userId: json['userId'] as int? ?? 0,
      userName: json['userName'] as String,
      email: json['email'] as String?,
      firstname: json['firstname'] as String?,
      surname: json['surname'] as String? ?? '',
      avatarUrl: json['avatarUrl'] as String?,
      externalAvatarUrl: json['externalAvatarUrl'] as String?,
      phoneNumber: json['phoneNumber'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserEntityToJson(_$_UserEntity instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'email': instance.email,
      'firstname': instance.firstname,
      'surname': instance.surname,
      'avatarUrl': instance.avatarUrl,
      'externalAvatarUrl': instance.externalAvatarUrl,
      'phoneNumber': instance.phoneNumber,
    };
