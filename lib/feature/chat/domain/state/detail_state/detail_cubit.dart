import 'package:communication_client/feature/chat/domain/entities/message/message_entity.dart';
import 'package:communication_client/feature/chat/domain/repository/chat_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_state.dart';
part 'detail_cubit.freezed.dart';

class DetailCubit extends Cubit<DetailState> {
  final ChatRepository postRepository;
  final String id;
  DetailCubit(this.postRepository, this.id) : super(const DetailState());

  Future<void> fetchPost() async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await postRepository.fetchChats(id).then((value) {
      emit(state.copyWith(
        messageEntity: value,
        asyncSnapshot: const AsyncSnapshot.withData(
            ConnectionState.done, "Успешное получение поста"),
      ));
    }).catchError((error) {
      addError(error);
    });
  }

  Future<void> deletePost() async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await postRepository.deleteMessage(id).then((value) {
      emit(state.copyWith(
        asyncSnapshot: const AsyncSnapshot.withData(
            ConnectionState.done, "Успешное удаление поста"),
      ));
    }).catchError((error) {
      addError(error);
    });
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    super.addError(error, stackTrace);
  }
}
