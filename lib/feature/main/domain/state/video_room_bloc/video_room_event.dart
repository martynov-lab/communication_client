part of 'video_room_bloc.dart';

@freezed
class VideoRoomEvent with _$VideoRoomEvent {
  const factory VideoRoomEvent.creatRoom() = _CreateVideoRoomEvent;
  const factory VideoRoomEvent.joinRoomLink(String roomId) =
      _JoinLinkVideoRoomEvent;
  const factory VideoRoomEvent.deleteRoom(String roomId) =
      _DeleteVideoRoomEvent;
}

// mixin _ErrorEmitter on VideoRoomEvent {
//   VideoRoomState error({required VideoRoomState state, String? message}) =>
//       VideoRoomState.error(
//         message ?? 'Произошла ошибка',
//       );
// }
