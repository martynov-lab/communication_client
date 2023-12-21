// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoRoomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() creatRoom,
    required TResult Function(String roomId) joinRoomLink,
    required TResult Function(String roomId) deleteRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? creatRoom,
    TResult? Function(String roomId)? joinRoomLink,
    TResult? Function(String roomId)? deleteRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? creatRoom,
    TResult Function(String roomId)? joinRoomLink,
    TResult Function(String roomId)? deleteRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateVideoRoomEvent value) creatRoom,
    required TResult Function(_JoinLinkVideoRoomEvent value) joinRoomLink,
    required TResult Function(_DeleteVideoRoomEvent value) deleteRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateVideoRoomEvent value)? creatRoom,
    TResult? Function(_JoinLinkVideoRoomEvent value)? joinRoomLink,
    TResult? Function(_DeleteVideoRoomEvent value)? deleteRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateVideoRoomEvent value)? creatRoom,
    TResult Function(_JoinLinkVideoRoomEvent value)? joinRoomLink,
    TResult Function(_DeleteVideoRoomEvent value)? deleteRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoRoomEventCopyWith<$Res> {
  factory $VideoRoomEventCopyWith(
          VideoRoomEvent value, $Res Function(VideoRoomEvent) then) =
      _$VideoRoomEventCopyWithImpl<$Res, VideoRoomEvent>;
}

/// @nodoc
class _$VideoRoomEventCopyWithImpl<$Res, $Val extends VideoRoomEvent>
    implements $VideoRoomEventCopyWith<$Res> {
  _$VideoRoomEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateVideoRoomEventImplCopyWith<$Res> {
  factory _$$CreateVideoRoomEventImplCopyWith(_$CreateVideoRoomEventImpl value,
          $Res Function(_$CreateVideoRoomEventImpl) then) =
      __$$CreateVideoRoomEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateVideoRoomEventImplCopyWithImpl<$Res>
    extends _$VideoRoomEventCopyWithImpl<$Res, _$CreateVideoRoomEventImpl>
    implements _$$CreateVideoRoomEventImplCopyWith<$Res> {
  __$$CreateVideoRoomEventImplCopyWithImpl(_$CreateVideoRoomEventImpl _value,
      $Res Function(_$CreateVideoRoomEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateVideoRoomEventImpl implements _CreateVideoRoomEvent {
  const _$CreateVideoRoomEventImpl();

  @override
  String toString() {
    return 'VideoRoomEvent.creatRoom()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateVideoRoomEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() creatRoom,
    required TResult Function(String roomId) joinRoomLink,
    required TResult Function(String roomId) deleteRoom,
  }) {
    return creatRoom();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? creatRoom,
    TResult? Function(String roomId)? joinRoomLink,
    TResult? Function(String roomId)? deleteRoom,
  }) {
    return creatRoom?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? creatRoom,
    TResult Function(String roomId)? joinRoomLink,
    TResult Function(String roomId)? deleteRoom,
    required TResult orElse(),
  }) {
    if (creatRoom != null) {
      return creatRoom();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateVideoRoomEvent value) creatRoom,
    required TResult Function(_JoinLinkVideoRoomEvent value) joinRoomLink,
    required TResult Function(_DeleteVideoRoomEvent value) deleteRoom,
  }) {
    return creatRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateVideoRoomEvent value)? creatRoom,
    TResult? Function(_JoinLinkVideoRoomEvent value)? joinRoomLink,
    TResult? Function(_DeleteVideoRoomEvent value)? deleteRoom,
  }) {
    return creatRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateVideoRoomEvent value)? creatRoom,
    TResult Function(_JoinLinkVideoRoomEvent value)? joinRoomLink,
    TResult Function(_DeleteVideoRoomEvent value)? deleteRoom,
    required TResult orElse(),
  }) {
    if (creatRoom != null) {
      return creatRoom(this);
    }
    return orElse();
  }
}

abstract class _CreateVideoRoomEvent implements VideoRoomEvent {
  const factory _CreateVideoRoomEvent() = _$CreateVideoRoomEventImpl;
}

/// @nodoc
abstract class _$$JoinLinkVideoRoomEventImplCopyWith<$Res> {
  factory _$$JoinLinkVideoRoomEventImplCopyWith(
          _$JoinLinkVideoRoomEventImpl value,
          $Res Function(_$JoinLinkVideoRoomEventImpl) then) =
      __$$JoinLinkVideoRoomEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId});
}

/// @nodoc
class __$$JoinLinkVideoRoomEventImplCopyWithImpl<$Res>
    extends _$VideoRoomEventCopyWithImpl<$Res, _$JoinLinkVideoRoomEventImpl>
    implements _$$JoinLinkVideoRoomEventImplCopyWith<$Res> {
  __$$JoinLinkVideoRoomEventImplCopyWithImpl(
      _$JoinLinkVideoRoomEventImpl _value,
      $Res Function(_$JoinLinkVideoRoomEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
  }) {
    return _then(_$JoinLinkVideoRoomEventImpl(
      null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$JoinLinkVideoRoomEventImpl implements _JoinLinkVideoRoomEvent {
  const _$JoinLinkVideoRoomEventImpl(this.roomId);

  @override
  final String roomId;

  @override
  String toString() {
    return 'VideoRoomEvent.joinRoomLink(roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinLinkVideoRoomEventImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinLinkVideoRoomEventImplCopyWith<_$JoinLinkVideoRoomEventImpl>
      get copyWith => __$$JoinLinkVideoRoomEventImplCopyWithImpl<
          _$JoinLinkVideoRoomEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() creatRoom,
    required TResult Function(String roomId) joinRoomLink,
    required TResult Function(String roomId) deleteRoom,
  }) {
    return joinRoomLink(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? creatRoom,
    TResult? Function(String roomId)? joinRoomLink,
    TResult? Function(String roomId)? deleteRoom,
  }) {
    return joinRoomLink?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? creatRoom,
    TResult Function(String roomId)? joinRoomLink,
    TResult Function(String roomId)? deleteRoom,
    required TResult orElse(),
  }) {
    if (joinRoomLink != null) {
      return joinRoomLink(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateVideoRoomEvent value) creatRoom,
    required TResult Function(_JoinLinkVideoRoomEvent value) joinRoomLink,
    required TResult Function(_DeleteVideoRoomEvent value) deleteRoom,
  }) {
    return joinRoomLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateVideoRoomEvent value)? creatRoom,
    TResult? Function(_JoinLinkVideoRoomEvent value)? joinRoomLink,
    TResult? Function(_DeleteVideoRoomEvent value)? deleteRoom,
  }) {
    return joinRoomLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateVideoRoomEvent value)? creatRoom,
    TResult Function(_JoinLinkVideoRoomEvent value)? joinRoomLink,
    TResult Function(_DeleteVideoRoomEvent value)? deleteRoom,
    required TResult orElse(),
  }) {
    if (joinRoomLink != null) {
      return joinRoomLink(this);
    }
    return orElse();
  }
}

abstract class _JoinLinkVideoRoomEvent implements VideoRoomEvent {
  const factory _JoinLinkVideoRoomEvent(final String roomId) =
      _$JoinLinkVideoRoomEventImpl;

  String get roomId;
  @JsonKey(ignore: true)
  _$$JoinLinkVideoRoomEventImplCopyWith<_$JoinLinkVideoRoomEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteVideoRoomEventImplCopyWith<$Res> {
  factory _$$DeleteVideoRoomEventImplCopyWith(_$DeleteVideoRoomEventImpl value,
          $Res Function(_$DeleteVideoRoomEventImpl) then) =
      __$$DeleteVideoRoomEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId});
}

/// @nodoc
class __$$DeleteVideoRoomEventImplCopyWithImpl<$Res>
    extends _$VideoRoomEventCopyWithImpl<$Res, _$DeleteVideoRoomEventImpl>
    implements _$$DeleteVideoRoomEventImplCopyWith<$Res> {
  __$$DeleteVideoRoomEventImplCopyWithImpl(_$DeleteVideoRoomEventImpl _value,
      $Res Function(_$DeleteVideoRoomEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
  }) {
    return _then(_$DeleteVideoRoomEventImpl(
      null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteVideoRoomEventImpl implements _DeleteVideoRoomEvent {
  const _$DeleteVideoRoomEventImpl(this.roomId);

  @override
  final String roomId;

  @override
  String toString() {
    return 'VideoRoomEvent.deleteRoom(roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteVideoRoomEventImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteVideoRoomEventImplCopyWith<_$DeleteVideoRoomEventImpl>
      get copyWith =>
          __$$DeleteVideoRoomEventImplCopyWithImpl<_$DeleteVideoRoomEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() creatRoom,
    required TResult Function(String roomId) joinRoomLink,
    required TResult Function(String roomId) deleteRoom,
  }) {
    return deleteRoom(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? creatRoom,
    TResult? Function(String roomId)? joinRoomLink,
    TResult? Function(String roomId)? deleteRoom,
  }) {
    return deleteRoom?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? creatRoom,
    TResult Function(String roomId)? joinRoomLink,
    TResult Function(String roomId)? deleteRoom,
    required TResult orElse(),
  }) {
    if (deleteRoom != null) {
      return deleteRoom(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateVideoRoomEvent value) creatRoom,
    required TResult Function(_JoinLinkVideoRoomEvent value) joinRoomLink,
    required TResult Function(_DeleteVideoRoomEvent value) deleteRoom,
  }) {
    return deleteRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateVideoRoomEvent value)? creatRoom,
    TResult? Function(_JoinLinkVideoRoomEvent value)? joinRoomLink,
    TResult? Function(_DeleteVideoRoomEvent value)? deleteRoom,
  }) {
    return deleteRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateVideoRoomEvent value)? creatRoom,
    TResult Function(_JoinLinkVideoRoomEvent value)? joinRoomLink,
    TResult Function(_DeleteVideoRoomEvent value)? deleteRoom,
    required TResult orElse(),
  }) {
    if (deleteRoom != null) {
      return deleteRoom(this);
    }
    return orElse();
  }
}

abstract class _DeleteVideoRoomEvent implements VideoRoomEvent {
  const factory _DeleteVideoRoomEvent(final String roomId) =
      _$DeleteVideoRoomEventImpl;

  String get roomId;
  @JsonKey(ignore: true)
  _$$DeleteVideoRoomEventImplCopyWith<_$DeleteVideoRoomEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VideoRoomState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)
        created,
    required TResult Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)
        joined,
    required TResult Function() deleteRoom,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)?
        created,
    TResult? Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)?
        joined,
    TResult? Function()? deleteRoom,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)?
        created,
    TResult Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)?
        joined,
    TResult Function()? deleteRoom,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialVideoRoomState value) initial,
    required TResult Function(_LoadingVideoRoomState value) loading,
    required TResult Function(_CreatedVideoRoomState value) created,
    required TResult Function(_JoinedVideoRoomState value) joined,
    required TResult Function(_DeleteVideoRoomState value) deleteRoom,
    required TResult Function(_ErrorVideoRoomState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialVideoRoomState value)? initial,
    TResult? Function(_LoadingVideoRoomState value)? loading,
    TResult? Function(_CreatedVideoRoomState value)? created,
    TResult? Function(_JoinedVideoRoomState value)? joined,
    TResult? Function(_DeleteVideoRoomState value)? deleteRoom,
    TResult? Function(_ErrorVideoRoomState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVideoRoomState value)? initial,
    TResult Function(_LoadingVideoRoomState value)? loading,
    TResult Function(_CreatedVideoRoomState value)? created,
    TResult Function(_JoinedVideoRoomState value)? joined,
    TResult Function(_DeleteVideoRoomState value)? deleteRoom,
    TResult Function(_ErrorVideoRoomState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoRoomStateCopyWith<$Res> {
  factory $VideoRoomStateCopyWith(
          VideoRoomState value, $Res Function(VideoRoomState) then) =
      _$VideoRoomStateCopyWithImpl<$Res, VideoRoomState>;
}

/// @nodoc
class _$VideoRoomStateCopyWithImpl<$Res, $Val extends VideoRoomState>
    implements $VideoRoomStateCopyWith<$Res> {
  _$VideoRoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialVideoRoomStateImplCopyWith<$Res> {
  factory _$$InitialVideoRoomStateImplCopyWith(
          _$InitialVideoRoomStateImpl value,
          $Res Function(_$InitialVideoRoomStateImpl) then) =
      __$$InitialVideoRoomStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialVideoRoomStateImplCopyWithImpl<$Res>
    extends _$VideoRoomStateCopyWithImpl<$Res, _$InitialVideoRoomStateImpl>
    implements _$$InitialVideoRoomStateImplCopyWith<$Res> {
  __$$InitialVideoRoomStateImplCopyWithImpl(_$InitialVideoRoomStateImpl _value,
      $Res Function(_$InitialVideoRoomStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialVideoRoomStateImpl implements _InitialVideoRoomState {
  const _$InitialVideoRoomStateImpl();

  @override
  String toString() {
    return 'VideoRoomState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialVideoRoomStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)
        created,
    required TResult Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)
        joined,
    required TResult Function() deleteRoom,
    required TResult Function(dynamic error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)?
        created,
    TResult? Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)?
        joined,
    TResult? Function()? deleteRoom,
    TResult? Function(dynamic error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)?
        created,
    TResult Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)?
        joined,
    TResult Function()? deleteRoom,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialVideoRoomState value) initial,
    required TResult Function(_LoadingVideoRoomState value) loading,
    required TResult Function(_CreatedVideoRoomState value) created,
    required TResult Function(_JoinedVideoRoomState value) joined,
    required TResult Function(_DeleteVideoRoomState value) deleteRoom,
    required TResult Function(_ErrorVideoRoomState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialVideoRoomState value)? initial,
    TResult? Function(_LoadingVideoRoomState value)? loading,
    TResult? Function(_CreatedVideoRoomState value)? created,
    TResult? Function(_JoinedVideoRoomState value)? joined,
    TResult? Function(_DeleteVideoRoomState value)? deleteRoom,
    TResult? Function(_ErrorVideoRoomState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVideoRoomState value)? initial,
    TResult Function(_LoadingVideoRoomState value)? loading,
    TResult Function(_CreatedVideoRoomState value)? created,
    TResult Function(_JoinedVideoRoomState value)? joined,
    TResult Function(_DeleteVideoRoomState value)? deleteRoom,
    TResult Function(_ErrorVideoRoomState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialVideoRoomState implements VideoRoomState {
  const factory _InitialVideoRoomState() = _$InitialVideoRoomStateImpl;
}

/// @nodoc
abstract class _$$LoadingVideoRoomStateImplCopyWith<$Res> {
  factory _$$LoadingVideoRoomStateImplCopyWith(
          _$LoadingVideoRoomStateImpl value,
          $Res Function(_$LoadingVideoRoomStateImpl) then) =
      __$$LoadingVideoRoomStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingVideoRoomStateImplCopyWithImpl<$Res>
    extends _$VideoRoomStateCopyWithImpl<$Res, _$LoadingVideoRoomStateImpl>
    implements _$$LoadingVideoRoomStateImplCopyWith<$Res> {
  __$$LoadingVideoRoomStateImplCopyWithImpl(_$LoadingVideoRoomStateImpl _value,
      $Res Function(_$LoadingVideoRoomStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingVideoRoomStateImpl implements _LoadingVideoRoomState {
  const _$LoadingVideoRoomStateImpl();

  @override
  String toString() {
    return 'VideoRoomState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingVideoRoomStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)
        created,
    required TResult Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)
        joined,
    required TResult Function() deleteRoom,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)?
        created,
    TResult? Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)?
        joined,
    TResult? Function()? deleteRoom,
    TResult? Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)?
        created,
    TResult Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)?
        joined,
    TResult Function()? deleteRoom,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialVideoRoomState value) initial,
    required TResult Function(_LoadingVideoRoomState value) loading,
    required TResult Function(_CreatedVideoRoomState value) created,
    required TResult Function(_JoinedVideoRoomState value) joined,
    required TResult Function(_DeleteVideoRoomState value) deleteRoom,
    required TResult Function(_ErrorVideoRoomState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialVideoRoomState value)? initial,
    TResult? Function(_LoadingVideoRoomState value)? loading,
    TResult? Function(_CreatedVideoRoomState value)? created,
    TResult? Function(_JoinedVideoRoomState value)? joined,
    TResult? Function(_DeleteVideoRoomState value)? deleteRoom,
    TResult? Function(_ErrorVideoRoomState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVideoRoomState value)? initial,
    TResult Function(_LoadingVideoRoomState value)? loading,
    TResult Function(_CreatedVideoRoomState value)? created,
    TResult Function(_JoinedVideoRoomState value)? joined,
    TResult Function(_DeleteVideoRoomState value)? deleteRoom,
    TResult Function(_ErrorVideoRoomState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingVideoRoomState implements VideoRoomState {
  const factory _LoadingVideoRoomState() = _$LoadingVideoRoomStateImpl;
}

/// @nodoc
abstract class _$$CreatedVideoRoomStateImplCopyWith<$Res> {
  factory _$$CreatedVideoRoomStateImplCopyWith(
          _$CreatedVideoRoomStateImpl value,
          $Res Function(_$CreatedVideoRoomStateImpl) then) =
      __$$CreatedVideoRoomStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String roomId,
      RTCVideoRenderer localRenderer,
      RTCVideoRenderer remoteRenderer});
}

/// @nodoc
class __$$CreatedVideoRoomStateImplCopyWithImpl<$Res>
    extends _$VideoRoomStateCopyWithImpl<$Res, _$CreatedVideoRoomStateImpl>
    implements _$$CreatedVideoRoomStateImplCopyWith<$Res> {
  __$$CreatedVideoRoomStateImplCopyWithImpl(_$CreatedVideoRoomStateImpl _value,
      $Res Function(_$CreatedVideoRoomStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? localRenderer = null,
    Object? remoteRenderer = null,
  }) {
    return _then(_$CreatedVideoRoomStateImpl(
      null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      null == localRenderer
          ? _value.localRenderer
          : localRenderer // ignore: cast_nullable_to_non_nullable
              as RTCVideoRenderer,
      null == remoteRenderer
          ? _value.remoteRenderer
          : remoteRenderer // ignore: cast_nullable_to_non_nullable
              as RTCVideoRenderer,
    ));
  }
}

/// @nodoc

class _$CreatedVideoRoomStateImpl implements _CreatedVideoRoomState {
  const _$CreatedVideoRoomStateImpl(
      this.roomId, this.localRenderer, this.remoteRenderer);

  @override
  final String roomId;
  @override
  final RTCVideoRenderer localRenderer;
  @override
  final RTCVideoRenderer remoteRenderer;

  @override
  String toString() {
    return 'VideoRoomState.created(roomId: $roomId, localRenderer: $localRenderer, remoteRenderer: $remoteRenderer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedVideoRoomStateImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.localRenderer, localRenderer) ||
                other.localRenderer == localRenderer) &&
            (identical(other.remoteRenderer, remoteRenderer) ||
                other.remoteRenderer == remoteRenderer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, roomId, localRenderer, remoteRenderer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedVideoRoomStateImplCopyWith<_$CreatedVideoRoomStateImpl>
      get copyWith => __$$CreatedVideoRoomStateImplCopyWithImpl<
          _$CreatedVideoRoomStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)
        created,
    required TResult Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)
        joined,
    required TResult Function() deleteRoom,
    required TResult Function(dynamic error) error,
  }) {
    return created(roomId, localRenderer, remoteRenderer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)?
        created,
    TResult? Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)?
        joined,
    TResult? Function()? deleteRoom,
    TResult? Function(dynamic error)? error,
  }) {
    return created?.call(roomId, localRenderer, remoteRenderer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)?
        created,
    TResult Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)?
        joined,
    TResult Function()? deleteRoom,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(roomId, localRenderer, remoteRenderer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialVideoRoomState value) initial,
    required TResult Function(_LoadingVideoRoomState value) loading,
    required TResult Function(_CreatedVideoRoomState value) created,
    required TResult Function(_JoinedVideoRoomState value) joined,
    required TResult Function(_DeleteVideoRoomState value) deleteRoom,
    required TResult Function(_ErrorVideoRoomState value) error,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialVideoRoomState value)? initial,
    TResult? Function(_LoadingVideoRoomState value)? loading,
    TResult? Function(_CreatedVideoRoomState value)? created,
    TResult? Function(_JoinedVideoRoomState value)? joined,
    TResult? Function(_DeleteVideoRoomState value)? deleteRoom,
    TResult? Function(_ErrorVideoRoomState value)? error,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVideoRoomState value)? initial,
    TResult Function(_LoadingVideoRoomState value)? loading,
    TResult Function(_CreatedVideoRoomState value)? created,
    TResult Function(_JoinedVideoRoomState value)? joined,
    TResult Function(_DeleteVideoRoomState value)? deleteRoom,
    TResult Function(_ErrorVideoRoomState value)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _CreatedVideoRoomState implements VideoRoomState {
  const factory _CreatedVideoRoomState(
      final String roomId,
      final RTCVideoRenderer localRenderer,
      final RTCVideoRenderer remoteRenderer) = _$CreatedVideoRoomStateImpl;

  String get roomId;
  RTCVideoRenderer get localRenderer;
  RTCVideoRenderer get remoteRenderer;
  @JsonKey(ignore: true)
  _$$CreatedVideoRoomStateImplCopyWith<_$CreatedVideoRoomStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JoinedVideoRoomStateImplCopyWith<$Res> {
  factory _$$JoinedVideoRoomStateImplCopyWith(_$JoinedVideoRoomStateImpl value,
          $Res Function(_$JoinedVideoRoomStateImpl) then) =
      __$$JoinedVideoRoomStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer});
}

/// @nodoc
class __$$JoinedVideoRoomStateImplCopyWithImpl<$Res>
    extends _$VideoRoomStateCopyWithImpl<$Res, _$JoinedVideoRoomStateImpl>
    implements _$$JoinedVideoRoomStateImplCopyWith<$Res> {
  __$$JoinedVideoRoomStateImplCopyWithImpl(_$JoinedVideoRoomStateImpl _value,
      $Res Function(_$JoinedVideoRoomStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localRenderer = null,
    Object? remoteRenderer = null,
  }) {
    return _then(_$JoinedVideoRoomStateImpl(
      null == localRenderer
          ? _value.localRenderer
          : localRenderer // ignore: cast_nullable_to_non_nullable
              as RTCVideoRenderer,
      null == remoteRenderer
          ? _value.remoteRenderer
          : remoteRenderer // ignore: cast_nullable_to_non_nullable
              as RTCVideoRenderer,
    ));
  }
}

/// @nodoc

class _$JoinedVideoRoomStateImpl implements _JoinedVideoRoomState {
  const _$JoinedVideoRoomStateImpl(this.localRenderer, this.remoteRenderer);

  @override
  final RTCVideoRenderer localRenderer;
  @override
  final RTCVideoRenderer remoteRenderer;

  @override
  String toString() {
    return 'VideoRoomState.joined(localRenderer: $localRenderer, remoteRenderer: $remoteRenderer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinedVideoRoomStateImpl &&
            (identical(other.localRenderer, localRenderer) ||
                other.localRenderer == localRenderer) &&
            (identical(other.remoteRenderer, remoteRenderer) ||
                other.remoteRenderer == remoteRenderer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localRenderer, remoteRenderer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinedVideoRoomStateImplCopyWith<_$JoinedVideoRoomStateImpl>
      get copyWith =>
          __$$JoinedVideoRoomStateImplCopyWithImpl<_$JoinedVideoRoomStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)
        created,
    required TResult Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)
        joined,
    required TResult Function() deleteRoom,
    required TResult Function(dynamic error) error,
  }) {
    return joined(localRenderer, remoteRenderer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)?
        created,
    TResult? Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)?
        joined,
    TResult? Function()? deleteRoom,
    TResult? Function(dynamic error)? error,
  }) {
    return joined?.call(localRenderer, remoteRenderer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)?
        created,
    TResult Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)?
        joined,
    TResult Function()? deleteRoom,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (joined != null) {
      return joined(localRenderer, remoteRenderer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialVideoRoomState value) initial,
    required TResult Function(_LoadingVideoRoomState value) loading,
    required TResult Function(_CreatedVideoRoomState value) created,
    required TResult Function(_JoinedVideoRoomState value) joined,
    required TResult Function(_DeleteVideoRoomState value) deleteRoom,
    required TResult Function(_ErrorVideoRoomState value) error,
  }) {
    return joined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialVideoRoomState value)? initial,
    TResult? Function(_LoadingVideoRoomState value)? loading,
    TResult? Function(_CreatedVideoRoomState value)? created,
    TResult? Function(_JoinedVideoRoomState value)? joined,
    TResult? Function(_DeleteVideoRoomState value)? deleteRoom,
    TResult? Function(_ErrorVideoRoomState value)? error,
  }) {
    return joined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVideoRoomState value)? initial,
    TResult Function(_LoadingVideoRoomState value)? loading,
    TResult Function(_CreatedVideoRoomState value)? created,
    TResult Function(_JoinedVideoRoomState value)? joined,
    TResult Function(_DeleteVideoRoomState value)? deleteRoom,
    TResult Function(_ErrorVideoRoomState value)? error,
    required TResult orElse(),
  }) {
    if (joined != null) {
      return joined(this);
    }
    return orElse();
  }
}

abstract class _JoinedVideoRoomState implements VideoRoomState {
  const factory _JoinedVideoRoomState(final RTCVideoRenderer localRenderer,
      final RTCVideoRenderer remoteRenderer) = _$JoinedVideoRoomStateImpl;

  RTCVideoRenderer get localRenderer;
  RTCVideoRenderer get remoteRenderer;
  @JsonKey(ignore: true)
  _$$JoinedVideoRoomStateImplCopyWith<_$JoinedVideoRoomStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteVideoRoomStateImplCopyWith<$Res> {
  factory _$$DeleteVideoRoomStateImplCopyWith(_$DeleteVideoRoomStateImpl value,
          $Res Function(_$DeleteVideoRoomStateImpl) then) =
      __$$DeleteVideoRoomStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteVideoRoomStateImplCopyWithImpl<$Res>
    extends _$VideoRoomStateCopyWithImpl<$Res, _$DeleteVideoRoomStateImpl>
    implements _$$DeleteVideoRoomStateImplCopyWith<$Res> {
  __$$DeleteVideoRoomStateImplCopyWithImpl(_$DeleteVideoRoomStateImpl _value,
      $Res Function(_$DeleteVideoRoomStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteVideoRoomStateImpl implements _DeleteVideoRoomState {
  const _$DeleteVideoRoomStateImpl();

  @override
  String toString() {
    return 'VideoRoomState.deleteRoom()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteVideoRoomStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)
        created,
    required TResult Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)
        joined,
    required TResult Function() deleteRoom,
    required TResult Function(dynamic error) error,
  }) {
    return deleteRoom();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)?
        created,
    TResult? Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)?
        joined,
    TResult? Function()? deleteRoom,
    TResult? Function(dynamic error)? error,
  }) {
    return deleteRoom?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)?
        created,
    TResult Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)?
        joined,
    TResult Function()? deleteRoom,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (deleteRoom != null) {
      return deleteRoom();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialVideoRoomState value) initial,
    required TResult Function(_LoadingVideoRoomState value) loading,
    required TResult Function(_CreatedVideoRoomState value) created,
    required TResult Function(_JoinedVideoRoomState value) joined,
    required TResult Function(_DeleteVideoRoomState value) deleteRoom,
    required TResult Function(_ErrorVideoRoomState value) error,
  }) {
    return deleteRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialVideoRoomState value)? initial,
    TResult? Function(_LoadingVideoRoomState value)? loading,
    TResult? Function(_CreatedVideoRoomState value)? created,
    TResult? Function(_JoinedVideoRoomState value)? joined,
    TResult? Function(_DeleteVideoRoomState value)? deleteRoom,
    TResult? Function(_ErrorVideoRoomState value)? error,
  }) {
    return deleteRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVideoRoomState value)? initial,
    TResult Function(_LoadingVideoRoomState value)? loading,
    TResult Function(_CreatedVideoRoomState value)? created,
    TResult Function(_JoinedVideoRoomState value)? joined,
    TResult Function(_DeleteVideoRoomState value)? deleteRoom,
    TResult Function(_ErrorVideoRoomState value)? error,
    required TResult orElse(),
  }) {
    if (deleteRoom != null) {
      return deleteRoom(this);
    }
    return orElse();
  }
}

abstract class _DeleteVideoRoomState implements VideoRoomState {
  const factory _DeleteVideoRoomState() = _$DeleteVideoRoomStateImpl;
}

/// @nodoc
abstract class _$$ErrorVideoRoomStateImplCopyWith<$Res> {
  factory _$$ErrorVideoRoomStateImplCopyWith(_$ErrorVideoRoomStateImpl value,
          $Res Function(_$ErrorVideoRoomStateImpl) then) =
      __$$ErrorVideoRoomStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$ErrorVideoRoomStateImplCopyWithImpl<$Res>
    extends _$VideoRoomStateCopyWithImpl<$Res, _$ErrorVideoRoomStateImpl>
    implements _$$ErrorVideoRoomStateImplCopyWith<$Res> {
  __$$ErrorVideoRoomStateImplCopyWithImpl(_$ErrorVideoRoomStateImpl _value,
      $Res Function(_$ErrorVideoRoomStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ErrorVideoRoomStateImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ErrorVideoRoomStateImpl implements _ErrorVideoRoomState {
  const _$ErrorVideoRoomStateImpl(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'VideoRoomState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorVideoRoomStateImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorVideoRoomStateImplCopyWith<_$ErrorVideoRoomStateImpl> get copyWith =>
      __$$ErrorVideoRoomStateImplCopyWithImpl<_$ErrorVideoRoomStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)
        created,
    required TResult Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)
        joined,
    required TResult Function() deleteRoom,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)?
        created,
    TResult? Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)?
        joined,
    TResult? Function()? deleteRoom,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String roomId, RTCVideoRenderer localRenderer,
            RTCVideoRenderer remoteRenderer)?
        created,
    TResult Function(
            RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer)?
        joined,
    TResult Function()? deleteRoom,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialVideoRoomState value) initial,
    required TResult Function(_LoadingVideoRoomState value) loading,
    required TResult Function(_CreatedVideoRoomState value) created,
    required TResult Function(_JoinedVideoRoomState value) joined,
    required TResult Function(_DeleteVideoRoomState value) deleteRoom,
    required TResult Function(_ErrorVideoRoomState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialVideoRoomState value)? initial,
    TResult? Function(_LoadingVideoRoomState value)? loading,
    TResult? Function(_CreatedVideoRoomState value)? created,
    TResult? Function(_JoinedVideoRoomState value)? joined,
    TResult? Function(_DeleteVideoRoomState value)? deleteRoom,
    TResult? Function(_ErrorVideoRoomState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVideoRoomState value)? initial,
    TResult Function(_LoadingVideoRoomState value)? loading,
    TResult Function(_CreatedVideoRoomState value)? created,
    TResult Function(_JoinedVideoRoomState value)? joined,
    TResult Function(_DeleteVideoRoomState value)? deleteRoom,
    TResult Function(_ErrorVideoRoomState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorVideoRoomState implements VideoRoomState {
  const factory _ErrorVideoRoomState(final dynamic error) =
      _$ErrorVideoRoomStateImpl;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$ErrorVideoRoomStateImplCopyWith<_$ErrorVideoRoomStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
