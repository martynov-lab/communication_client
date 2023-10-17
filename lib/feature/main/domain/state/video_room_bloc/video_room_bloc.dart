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
  VideoRoomBloc(this.signalingService) : super(const VideoRoomState.initial()) {
    on<VideoRoomEvent>(
      (event, emitter) => event.map<Future<void>>(
        creatRoom: (event) => _creatRoom(event, emitter),
        joinRoomLink: (event) => _joinRoomLink(event, emitter),
        deleteRoom: (event) => _deleteRoom(event, emitter),
      ),
      transformer: bloc_concurrency.sequential(),
    );
  }

  //     signaling.onAddRemoteStream = ((stream) {
//       _remoteRenderer.srcObject = stream;
//       setState(() {});
//     });

  Future<void> _creatRoom(
      _CreateVideoRoomEvent event, Emitter<VideoRoomState> emitter) async {
    try {
      final RTCVideoRenderer localRenderer = RTCVideoRenderer();
      final RTCVideoRenderer remoteRenderer = RTCVideoRenderer();
      localRenderer.initialize();
      remoteRenderer.initialize();

      //      signalingService.onAddRemoteStream = ((stream) {
      //   remoteRenderer.srcObject = stream;
      // });

      emitter(const VideoRoomState.loading());
      await signalingService.openUserMedia(localRenderer, remoteRenderer);
      String roomId = await signalingService.createRoom(remoteRenderer);
      emitter(VideoRoomState.created(roomId, localRenderer));
    } on Exception {
      emitter(const VideoRoomState.error('Некритичная ошибка'));
    } on Object {
      emitter(const VideoRoomState.error(
          'Непредвиденная ошибка при добавлении текста'));
      emitter(const VideoRoomState.initial());
      rethrow;
    }
  }

  Future<void> _joinRoomLink(
      _JoinLinkVideoRoomEvent event, Emitter<VideoRoomState> emitter) async {
    try {
      emitter(const VideoRoomState.loading());
      // ... логика присоединения к комнате await _repository.joinRoom(idRoom: event.id);
      //emitter(const VideoRoomState.('1'));
    } on Exception {
      emitter(const VideoRoomState.error('Некритичная ошибка'));
    } on Object {
      emitter(const VideoRoomState.error(
          'Непредвиденная ошибка при добавлении текста'));
      emitter(const VideoRoomState.initial());
      rethrow;
    }
  }

  Future<void> _deleteRoom(
      _DeleteVideoRoomEvent event, Emitter<VideoRoomState> emitter) async {
    try {
      emitter(const VideoRoomState.loading());
      // ... логика удаления комнаты await _repository.deleteRoom(idRoom: event.id);
      //emitter(const VideoRoomState.created('1'));
    } on Exception {
      emitter(const VideoRoomState.error('Некритичная ошибка'));
    } on Object {
      emitter(const VideoRoomState.error(
          'Непредвиденная ошибка при добавлении текста'));
      emitter(const VideoRoomState.initial());
      rethrow;
    }
  }
}
