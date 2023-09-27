import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

part 'video_room_event.dart';
part 'video_room_state.dart';
part 'video_room_bloc.freezed.dart';

class VideoRoomBloc extends Bloc<VideoRoomEvent, VideoRoomState> {
  VideoRoomBloc() : super(const VideoRoomState.initial()) {
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
      // ... логика создания комнаты await _repository.createRooom(idRoom: event.id);
      emitter(const VideoRoomState.created());
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
      emitter(const VideoRoomState.created());
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
      emitter(const VideoRoomState.created());
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
