// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostState {
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot =>
      throw _privateConstructorUsedError;
  List<PostEntity> get postList => throw _privateConstructorUsedError;
  int get fetchLimit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostStateCopyWith<PostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res, PostState>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<PostEntity> postList,
      int fetchLimit,
      int offset});
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res, $Val extends PostState>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? postList = null,
    Object? fetchLimit = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      postList: null == postList
          ? _value.postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<PostEntity>,
      fetchLimit: null == fetchLimit
          ? _value.fetchLimit
          : fetchLimit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostStateCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory _$$_PostStateCopyWith(
          _$_PostState value, $Res Function(_$_PostState) then) =
      __$$_PostStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<PostEntity> postList,
      int fetchLimit,
      int offset});
}

/// @nodoc
class __$$_PostStateCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$_PostState>
    implements _$$_PostStateCopyWith<$Res> {
  __$$_PostStateCopyWithImpl(
      _$_PostState _value, $Res Function(_$_PostState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? postList = null,
    Object? fetchLimit = null,
    Object? offset = null,
  }) {
    return _then(_$_PostState(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      postList: null == postList
          ? _value._postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<PostEntity>,
      fetchLimit: null == fetchLimit
          ? _value.fetchLimit
          : fetchLimit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PostState implements _PostState {
  const _$_PostState(
      {@JsonKey(ignore: true) this.asyncSnapshot,
      final List<PostEntity> postList = const [],
      this.fetchLimit = 15,
      this.offset = 0})
      : _postList = postList;

  @override
  @JsonKey(ignore: true)
  final AsyncSnapshot<dynamic>? asyncSnapshot;
  final List<PostEntity> _postList;
  @override
  @JsonKey()
  List<PostEntity> get postList {
    if (_postList is EqualUnmodifiableListView) return _postList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postList);
  }

  @override
  @JsonKey()
  final int fetchLimit;
  @override
  @JsonKey()
  final int offset;

  @override
  String toString() {
    return 'PostState(asyncSnapshot: $asyncSnapshot, postList: $postList, fetchLimit: $fetchLimit, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostState &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            const DeepCollectionEquality().equals(other._postList, _postList) &&
            (identical(other.fetchLimit, fetchLimit) ||
                other.fetchLimit == fetchLimit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asyncSnapshot,
      const DeepCollectionEquality().hash(_postList), fetchLimit, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostStateCopyWith<_$_PostState> get copyWith =>
      __$$_PostStateCopyWithImpl<_$_PostState>(this, _$identity);
}

abstract class _PostState implements PostState {
  const factory _PostState(
      {@JsonKey(ignore: true) final AsyncSnapshot<dynamic>? asyncSnapshot,
      final List<PostEntity> postList,
      final int fetchLimit,
      final int offset}) = _$_PostState;

  @override
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot;
  @override
  List<PostEntity> get postList;
  @override
  int get fetchLimit;
  @override
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$$_PostStateCopyWith<_$_PostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Map<String, dynamic> args) createPost,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Map<String, dynamic> args)? createPost,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Map<String, dynamic> args)? createPost,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostEventFetch value) fetch,
    required TResult Function(_PostEventCreatePost value) createPost,
    required TResult Function(_PostEventLogout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostEventFetch value)? fetch,
    TResult? Function(_PostEventCreatePost value)? createPost,
    TResult? Function(_PostEventLogout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostEventFetch value)? fetch,
    TResult Function(_PostEventCreatePost value)? createPost,
    TResult Function(_PostEventLogout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res, PostEvent>;
}

/// @nodoc
class _$PostEventCopyWithImpl<$Res, $Val extends PostEvent>
    implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PostEventFetchCopyWith<$Res> {
  factory _$$_PostEventFetchCopyWith(
          _$_PostEventFetch value, $Res Function(_$_PostEventFetch) then) =
      __$$_PostEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PostEventFetchCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$_PostEventFetch>
    implements _$$_PostEventFetchCopyWith<$Res> {
  __$$_PostEventFetchCopyWithImpl(
      _$_PostEventFetch _value, $Res Function(_$_PostEventFetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PostEventFetch extends _PostEventFetch {
  _$_PostEventFetch() : super._();

  @override
  String toString() {
    return 'PostEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PostEventFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Map<String, dynamic> args) createPost,
    required TResult Function() logout,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Map<String, dynamic> args)? createPost,
    TResult? Function()? logout,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Map<String, dynamic> args)? createPost,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostEventFetch value) fetch,
    required TResult Function(_PostEventCreatePost value) createPost,
    required TResult Function(_PostEventLogout value) logout,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostEventFetch value)? fetch,
    TResult? Function(_PostEventCreatePost value)? createPost,
    TResult? Function(_PostEventLogout value)? logout,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostEventFetch value)? fetch,
    TResult Function(_PostEventCreatePost value)? createPost,
    TResult Function(_PostEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _PostEventFetch extends PostEvent {
  factory _PostEventFetch() = _$_PostEventFetch;
  _PostEventFetch._() : super._();
}

/// @nodoc
abstract class _$$_PostEventCreatePostCopyWith<$Res> {
  factory _$$_PostEventCreatePostCopyWith(_$_PostEventCreatePost value,
          $Res Function(_$_PostEventCreatePost) then) =
      __$$_PostEventCreatePostCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> args});
}

/// @nodoc
class __$$_PostEventCreatePostCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$_PostEventCreatePost>
    implements _$$_PostEventCreatePostCopyWith<$Res> {
  __$$_PostEventCreatePostCopyWithImpl(_$_PostEventCreatePost _value,
      $Res Function(_$_PostEventCreatePost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
  }) {
    return _then(_$_PostEventCreatePost(
      null == args
          ? _value._args
          : args // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_PostEventCreatePost extends _PostEventCreatePost {
  _$_PostEventCreatePost(final Map<String, dynamic> args)
      : _args = args,
        super._();

  final Map<String, dynamic> _args;
  @override
  Map<String, dynamic> get args {
    if (_args is EqualUnmodifiableMapView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_args);
  }

  @override
  String toString() {
    return 'PostEvent.createPost(args: $args)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostEventCreatePost &&
            const DeepCollectionEquality().equals(other._args, _args));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_args));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostEventCreatePostCopyWith<_$_PostEventCreatePost> get copyWith =>
      __$$_PostEventCreatePostCopyWithImpl<_$_PostEventCreatePost>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Map<String, dynamic> args) createPost,
    required TResult Function() logout,
  }) {
    return createPost(args);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Map<String, dynamic> args)? createPost,
    TResult? Function()? logout,
  }) {
    return createPost?.call(args);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Map<String, dynamic> args)? createPost,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (createPost != null) {
      return createPost(args);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostEventFetch value) fetch,
    required TResult Function(_PostEventCreatePost value) createPost,
    required TResult Function(_PostEventLogout value) logout,
  }) {
    return createPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostEventFetch value)? fetch,
    TResult? Function(_PostEventCreatePost value)? createPost,
    TResult? Function(_PostEventLogout value)? logout,
  }) {
    return createPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostEventFetch value)? fetch,
    TResult Function(_PostEventCreatePost value)? createPost,
    TResult Function(_PostEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (createPost != null) {
      return createPost(this);
    }
    return orElse();
  }
}

abstract class _PostEventCreatePost extends PostEvent {
  factory _PostEventCreatePost(final Map<String, dynamic> args) =
      _$_PostEventCreatePost;
  _PostEventCreatePost._() : super._();

  Map<String, dynamic> get args;
  @JsonKey(ignore: true)
  _$$_PostEventCreatePostCopyWith<_$_PostEventCreatePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostEventLogoutCopyWith<$Res> {
  factory _$$_PostEventLogoutCopyWith(
          _$_PostEventLogout value, $Res Function(_$_PostEventLogout) then) =
      __$$_PostEventLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PostEventLogoutCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$_PostEventLogout>
    implements _$$_PostEventLogoutCopyWith<$Res> {
  __$$_PostEventLogoutCopyWithImpl(
      _$_PostEventLogout _value, $Res Function(_$_PostEventLogout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PostEventLogout extends _PostEventLogout {
  _$_PostEventLogout() : super._();

  @override
  String toString() {
    return 'PostEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PostEventLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Map<String, dynamic> args) createPost,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Map<String, dynamic> args)? createPost,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Map<String, dynamic> args)? createPost,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostEventFetch value) fetch,
    required TResult Function(_PostEventCreatePost value) createPost,
    required TResult Function(_PostEventLogout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostEventFetch value)? fetch,
    TResult? Function(_PostEventCreatePost value)? createPost,
    TResult? Function(_PostEventLogout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostEventFetch value)? fetch,
    TResult Function(_PostEventCreatePost value)? createPost,
    TResult Function(_PostEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _PostEventLogout extends PostEvent {
  factory _PostEventLogout() = _$_PostEventLogout;
  _PostEventLogout._() : super._();
}
