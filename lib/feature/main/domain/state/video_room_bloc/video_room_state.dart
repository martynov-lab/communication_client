part of 'video_room_bloc.dart';

@freezed
class VideoRoomState with _$VideoRoomState {
  const factory VideoRoomState.initial() = _InitialVideoRoomState;
  const factory VideoRoomState.loading() = _LoadingVideoRoomState;
  const factory VideoRoomState.created(
    String roomId,
    RTCVideoRenderer localRenderer,
  ) = _CreatedVideoRoomState;
  const factory VideoRoomState.joined() = _DeleteVideoRoomState;
  const factory VideoRoomState.deleteRoom() = _DeleteVideoRoomState;
  const factory VideoRoomState.error(dynamic error) = _ErrorVideoRoomState;
}
