part of 'video_room_bloc.dart';

@freezed
class VideoRoomEvent with _$VideoRoomEvent {
  const factory VideoRoomEvent.creatRoom() = _CreateVideoRoomEvent;
  const factory VideoRoomEvent.joinRoomLink() = _JoinLinkVideoRoomEvent;
  const factory VideoRoomEvent.deleteRoom() = _DeleteVideoRoomEvent;
}

// mixin _ErrorEmitter on VideoRoomEvent {
//   VideoRoomState error({required VideoRoomState state, String? message}) =>
//       VideoRoomState.error(
//         message ?? 'Произошла ошибка',
//       );
// }
