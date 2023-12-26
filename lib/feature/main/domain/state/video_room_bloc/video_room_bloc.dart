import 'package:communication_client/feature/main/domain/repository/video_room_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

part 'video_room_event.dart';
part 'video_room_state.dart';
part 'video_room_bloc.freezed.dart';

class VideoRoomBloc extends Bloc<VideoRoomEvent, VideoRoomState> {
  final VideoRoomRepository signalingService;
  late final RTCVideoRenderer localRenderer;
  late final RTCVideoRenderer remoteRenderer;
  VideoRoomBloc(this.signalingService) : super(const VideoRoomState.initial()) {
    localRenderer = RTCVideoRenderer();
    remoteRenderer = RTCVideoRenderer();
    localRenderer.initialize();
    remoteRenderer.initialize();
    on<VideoRoomEvent>(
      (event, emitter) => event.map<Future<void>>(
        creatRoom: (event) => _creatRoom(event, emitter),
        joinRoomLink: (event) => _joinRoomLink(event, emitter),
        deleteRoom: (event) => _deleteRoom(event, emitter),
      ),
      transformer: bloc_concurrency.sequential(),
    );
  }

  Future<void> _creatRoom(
      _CreateVideoRoomEvent event, Emitter<VideoRoomState> emitter) async {
    try {
      emitter(const VideoRoomState.loading());
      await signalingService.openUserMedia(
        localRenderer: localRenderer,
        remoteRenderer: remoteRenderer,
      );
      String roomId = await signalingService.createRoom(
        localRenderer: localRenderer,
        remoteRenderer: remoteRenderer,
      );
      await Future.delayed(const Duration(milliseconds: 3000));

      emitter(VideoRoomState.created(roomId, localRenderer, remoteRenderer));
    } catch (e) {
      emitter(VideoRoomState.error('Некритичная ошибка: ${e}'));
    }
  }

  Future<void> _joinRoomLink(
      _JoinLinkVideoRoomEvent event, Emitter<VideoRoomState> emitter) async {
    try {
      emitter(const VideoRoomState.loading());
      await signalingService.openUserMedia(
          localRenderer: localRenderer, remoteRenderer: remoteRenderer);

      await signalingService.joinRoom(
        roomId: event.roomId,
        localRenderer: localRenderer,
        remoteRenderer: remoteRenderer,
      );
      emitter(
          VideoRoomState.joined(event.roomId, localRenderer, remoteRenderer));
    } catch (e) {
      emitter(VideoRoomState.error('Некритичная ошибка: ${e}'));
    }
  }

  Future<void> _deleteRoom(
      _DeleteVideoRoomEvent event, Emitter<VideoRoomState> emitter) async {
    try {
      emitter(const VideoRoomState.loading());
      await signalingService.hangUp(
          roomId: event.roomId,
          localRenderer: localRenderer,
          remoteRenderer: remoteRenderer);
      emitter(const VideoRoomState.deleteRoom());
    } on Object {
      emitter(const VideoRoomState.error(
          'Непредвиденная ошибка при добавлении текста'));
      emitter(const VideoRoomState.initial());
      rethrow;
    }
  }
}
