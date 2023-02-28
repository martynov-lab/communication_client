import 'dart:async';
import 'package:communication_client/feature/auth/domain/auth_state/auth_cubit.dart';
import 'package:communication_client/feature/post/domain/repository/post_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../entities/post/post_entity.dart';
part 'post_state.dart';
part 'post_cubit.freezed.dart';
part 'post_cubit.g.dart';

class PostCubit extends HydratedCubit<PostState> {
  final PostRepository postRepository;
  final AuthCubit authCubit;
  late final StreamSubscription authSub;
  PostCubit(this.postRepository, this.authCubit)
      : super(const PostState(asyncSnapshot: AsyncSnapshot.nothing())) {
    authSub = authCubit.stream.listen((event) {
      event.mapOrNull(
        authorized: (value) => fetchPosts(),
        unauthorized: (value) => logOut(),
      );
    });
  }

  Future<void> fetchPosts() async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await postRepository.fetchPosts().then((value) {
      final Iterable iterable = value;
      emit(state.copyWith(
          postList: iterable.map((post) => PostEntity.fromJson(post)).toList(),
          asyncSnapshot:
              const AsyncSnapshot.withData(ConnectionState.done, true)));
    }).catchError((error) {
      addError(error);
    });
  }

  Future<void> createPost(Map args) async {
    await postRepository.createPost(args).then((value) {
      fetchPosts();
    }).catchError((error) {
      addError(error);
    });
  }

  void logOut() {
    emit(state.copyWith(
      postList: [],
      asyncSnapshot: const AsyncSnapshot.nothing(),
    ));
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    super.addError(error, stackTrace);
  }

  @override
  PostState? fromJson(Map<String, dynamic> json) {
    return PostState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(PostState state) {
    return state.toJson();
  }

  @override
  Future<void> close() {
    authSub.cancel();
    return super.close();
  }
}
