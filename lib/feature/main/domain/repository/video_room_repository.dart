import 'package:flutter_webrtc/flutter_webrtc.dart';

abstract interface class VideoRoomRepository {
  Future<void> openUserMedia({
    required RTCVideoRenderer localRenderer,
    required RTCVideoRenderer remoteRenderer,
  });
  Future<String> createRoom({
    required RTCVideoRenderer localRenderer,
    required RTCVideoRenderer remoteRenderer,
  });
  Future<void> joinRoom({
    required String roomId,
    required RTCVideoRenderer localRenderer,
    required RTCVideoRenderer remoteRenderer,
  });
  Future<void> hangUp({
    required String roomId,
    required RTCVideoRenderer localRenderer,
    required RTCVideoRenderer remoteRenderer,
  });
}
