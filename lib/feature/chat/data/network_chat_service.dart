import 'package:communication_client/app/domain/app_api.dart';
import 'package:communication_client/feature/chat/domain/entities/message/message_entity.dart';
import 'package:communication_client/feature/chat/domain/repository/chat_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ChatRepository)
@prod
@dev
class NetworkChatService implements ChatRepository {
  final AppApi api;

  NetworkChatService(this.api);
  @override
  Future<Iterable> fetchMessages(int fetchLimit, int offset) async {
    try {
      final response = await api.fetchMessages(fetchLimit, offset);
      if (response.data is! Iterable) throw Exception(response.data["message"]);
      return response.data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<MessageEntity> fetchChats(String id) async {
    try {
      final response = await api.fetchChats(id);
      return MessageEntity.fromJson(response.data["data"]);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> createMessage(Map args) async {
    try {
      final response = await api.createMessage(args);
      return response.data["message "];
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future deleteMessage(String id) async {
    try {
      await api.deleteMessage(id);
    } catch (_) {
      rethrow;
    }
  }
}
