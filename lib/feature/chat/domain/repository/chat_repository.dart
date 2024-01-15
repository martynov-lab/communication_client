abstract class ChatRepository {
  Future fetchMessages(int fetchLimit, int offset);
  Future fetchChats(String id);
  Future deleteMessage(String id);
  Future createMessage(Map args);
}
