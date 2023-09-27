abstract interface class VideoRoomRepository {
  Future<String> createRoom();
  Future<void> joinRoom();
  Future<void> hangUp();
}
