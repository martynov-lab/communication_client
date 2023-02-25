// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostEntity _$$_PostEntityFromJson(Map<String, dynamic> json) =>
    _$_PostEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      content: json['content'] as String?,
      preContent: json['preContent'] as String?,
      autor: json['autor'] == null
          ? null
          : AutorEntity.fromJson(json['autor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PostEntityToJson(_$_PostEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'content': instance.content,
      'preContent': instance.preContent,
      'autor': instance.autor,
    };
