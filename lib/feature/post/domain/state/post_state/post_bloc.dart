import 'dart:async';
import 'package:communication_client/feature/auth/domain/auth_state/auth_cubit.dart';
import 'package:communication_client/feature/post/domain/repository/post_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../entities/post/post_entity.dart';
part 'post_state.dart';
part 'post_event.dart';
part 'post_bloc.freezed.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRepository postRepository;
  final AuthCubit authCubit;
  late final StreamSubscription authSub;
  PostBloc(this.postRepository, this.authCubit)
      : super(const PostState(asyncSnapshot: AsyncSnapshot.nothing())) {
    authSub = authCubit.stream.listen((event) {
      event.mapOrNull(
        authorized: (value) => add(PostEvent.fetch()),
        unauthorized: (value) => add(PostEvent.logout()),
      );
    });

    on<_PostEventFetch>(fetchPosts);
    on<_PostEventCreatePost>(createPost);
    on<_PostEventLogout>(logOut);
  }

  Future<void> fetchPosts(PostEvent event, Emitter emitter) async {
    if (state.asyncSnapshot?.connectionState == ConnectionState.waiting) return;
    emitter(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await postRepository
        .fetchPosts(state.fetchLimit, state.offset)
        .then((value) {
      final Iterable iterable = value;
      final fetchedList =
          iterable.map((post) => PostEntity.fromJson(post)).toList();
      final mergeList = [...state.postList, ...fetchedList];
      emitter(state.copyWith(
          offset: state.offset + fetchedList.length,
          postList: mergeList,
          asyncSnapshot:
              const AsyncSnapshot.withData(ConnectionState.done, true)));
    }).catchError((error) {
      addError(error);
    });
  }

  Future<void> createPost(PostEvent event, Emitter emitter) async {
    await postRepository
        .createPost((event as _PostEventCreatePost).args)
        .then((value) {
      add(PostEvent.fetch());
    }).catchError((error) {
      addError(error);
    });
  }

  void logOut(PostEvent event, Emitter emitter) {
    emitter(state.copyWith(
      postList: [],
      asyncSnapshot: const AsyncSnapshot.nothing(),
    ));
  }

  void stateError(Object error, Emitter emitter) {
    addError(error);
    emitter(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
  }

  // @override
  // PostState? fromJson(Map<String, dynamic> json) {
  //   return PostState.fromJson(json);
  // }

  // @override
  // Map<String, dynamic>? toJson(PostState state) {
  //   return state.toJson();
  // }

  @override
  Future<void> close() {
    authSub.cancel();
    return super.close();
  }
}
