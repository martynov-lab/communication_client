import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:communication_client/feature/auth/domain/state/auth_state/auth_bloc.dart';
import 'package:communication_client/feature/post/domain/repository/post_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../app/di/init_di.dart';
import '../../../../../app/domain/app_config.dart';
import '../../entities/post/post_entity.dart';
part 'post_state.dart';
part 'post_event.dart';
part 'post_bloc.freezed.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRepository postRepository;

  final AuthBloc authCubit;
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

  void sentMessage() async {
    var websocket = await WebSocket.connect(locator.get<AppConfig>().wsUrl);
    var codec = const JsonCodec().fuse(const Utf8Codec());
    websocket.listen((bytes) {
      var payload = codec.decode(bytes) as Map<String, dynamic>;

      switch (payload["event"]) {
        case "message":
          stdout.writeln(payload["data"]);
          print("Message: ${payload["data"]}");
          break;
        case "name_ack":
          stdout.writeln("You are now named: ${payload["data"]}");
          print("Name_ack: ${payload["data"]}");
          break;
        case "error":
          stdout.writeln("Error: ${payload["data"]}");
          print("Error: ${payload["data"]}");
          break;
        default:
          stdout.writeln("unknown event from server: ${payload["event"]}");
          print("Event: ${payload["event"]}");
      }
    });

    var regex = RegExp(r"^/name ([A-Za-z0-9]+)$");
    stdin.listen((input) {
      var asString = utf8.decode(input).trimRight();
      var nameMatch = regex.firstMatch(asString);
      if (nameMatch != null) {
        websocket
            .add(codec.encode({"event": "name", "data": nameMatch.group(1)}));
      } else {
        websocket.add(codec.encode({"event": "message", "data": asString}));
      }
    });
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
