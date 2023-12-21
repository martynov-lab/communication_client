import 'package:communication_client/feature/main/domain/repository/video_room_repository.dart';
import 'package:flutter_webrtc/src/native/rtc_video_renderer_impl.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: VideoRoomRepository)
@test
class MockSignalingServise implements VideoRoomRepository {
  @override
  Future<String> createRoom({
    required RTCVideoRenderer localRenderer,
    required RTCVideoRenderer remoteRenderer,
  }) {
    // TODO: implement createRoom
    throw UnimplementedError();
  }

  @override
  Future<void> hangUp({
    required String roomId,
    required RTCVideoRenderer localRenderer,
    required RTCVideoRenderer remoteRenderer,
  }) {
    // TODO: implement hangUp
    throw UnimplementedError();
  }

  @override
  Future<void> joinRoom({
    required String roomId,
    required RTCVideoRenderer localRenderer,
    required RTCVideoRenderer remoteRenderer,
  }) {
    // TODO: implement joinRoom
    throw UnimplementedError();
  }

  @override
  Future<void> openUserMedia({
    required RTCVideoRenderer localRenderer,
    required RTCVideoRenderer remoteRenderer,
  }) {
    // TODO: implement openUserMedia
    throw UnimplementedError();
  }
}
