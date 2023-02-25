// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostState _$$_PostStateFromJson(Map<String, dynamic> json) => _$_PostState(
      postList: (json['postList'] as List<dynamic>?)
              ?.map((e) => PostEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PostStateToJson(_$_PostState instance) =>
    <String, dynamic>{
      'postList': instance.postList,
    };
