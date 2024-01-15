import 'package:communication_client/feature/chat/domain/entities/autor/autor_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_entity.freezed.dart';
part 'message_entity.g.dart';

@freezed
class MessageEntity with _$MessageEntity {
  const factory MessageEntity({
    required int id,
    required String name,
    String? content,
    String? preContent,
    AutorEntity? autor,
  }) = _MessageEntity;

  factory MessageEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageEntityFromJson(json);
}
