import 'package:flutter_webrtc/flutter_webrtc.dart';

abstract interface class VideoRoomRepository {
  Future<void> openUserMedia(
    RTCVideoRenderer localVideo,
    RTCVideoRenderer remoteVideo,
  );
  Future<String> createRoom(RTCVideoRenderer remoteRenderer);
  Future<void> joinRoom(String roomId, RTCVideoRenderer remoteVideo);
  Future<void> hangUp(RTCVideoRenderer localVideo);
}
