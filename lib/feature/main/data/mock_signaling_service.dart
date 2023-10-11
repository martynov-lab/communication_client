import 'package:communication_client/feature/main/domain/repository/video_room_repository.dart';
import 'package:flutter_webrtc/src/native/rtc_video_renderer_impl.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: VideoRoomRepository)
@test
class MockSignalingServise implements VideoRoomRepository {
  @override
  Future<String> createRoom(RTCVideoRenderer remoteRenderer) {
    // TODO: implement createRoom
    throw UnimplementedError();
  }

  @override
  Future<void> hangUp(RTCVideoRenderer localVideo) {
    // TODO: implement hangUp
    throw UnimplementedError();
  }

  @override
  Future<void> joinRoom(String roomId, RTCVideoRenderer remoteVideo) {
    // TODO: implement joinRoom
    throw UnimplementedError();
  }

  @override
  Future<void> openUserMedia(
      RTCVideoRenderer localVideo, RTCVideoRenderer remoteVideo) {
    // TODO: implement openUserMedia
    throw UnimplementedError();
  }
}
