import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../auth/domain/entities/user_entity/user_entity.dart';

part 'message_entity.freezed.dart';
// part 'message_entity.g.dart';

@freezed
class MessageEntity with _$MessageEntity {
  factory MessageEntity({
    @Default('') String text,
    @Default('') String date,
    @Default(false) bool isSentByMe,
    UserEntity? autor,
  }) = _MessageEntity;

  // factory MessageEntity.fromJson(Map<String, dynamic> json) =>
  //     _$MessageEntityFromJson(json);
}
