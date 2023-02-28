import 'package:communication_client/feature/post/domain/entities/post/post_entity.dart';
import 'package:communication_client/feature/post/domain/repository/post_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_state.dart';
part 'detail_cubit.freezed.dart';

class DetailCubit extends Cubit<DetailState> {
  final PostRepository postRepository;
  final String id;
  DetailCubit(this.postRepository, this.id) : super(const DetailState());

  Future<void> fetchPost() async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await postRepository.fetchPost(id).then((value) {
      emit(state.copyWith(
        postEntity: value,
        asyncSnapshot: const AsyncSnapshot.withData(ConnectionState.done, true),
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
