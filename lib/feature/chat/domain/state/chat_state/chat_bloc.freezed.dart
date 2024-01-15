// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatState {
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot =>
      throw _privateConstructorUsedError;
  List<MessageEntity> get messageList => throw _privateConstructorUsedError;
  int get fetchLimit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<MessageEntity> messageList,
      int fetchLimit,
      int offset});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? messageList = null,
    Object? fetchLimit = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      messageList: null == messageList
          ? _value.messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>,
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
abstract class _$$PostStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$PostStateImplCopyWith(
          _$PostStateImpl value, $Res Function(_$PostStateImpl) then) =
      __$$PostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<MessageEntity> messageList,
      int fetchLimit,
      int offset});
}

/// @nodoc
class __$$PostStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$PostStateImpl>
    implements _$$PostStateImplCopyWith<$Res> {
  __$$PostStateImplCopyWithImpl(
      _$PostStateImpl _value, $Res Function(_$PostStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? messageList = null,
    Object? fetchLimit = null,
    Object? offset = null,
  }) {
    return _then(_$PostStateImpl(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      messageList: null == messageList
          ? _value._messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>,
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

class _$PostStateImpl implements _PostState {
  const _$PostStateImpl(
      {@JsonKey(ignore: true) this.asyncSnapshot,
      final List<MessageEntity> messageList = const [],
      this.fetchLimit = 15,
      this.offset = 0})
      : _messageList = messageList;

  @override
  @JsonKey(ignore: true)
  final AsyncSnapshot<dynamic>? asyncSnapshot;
  final List<MessageEntity> _messageList;
  @override
  @JsonKey()
  List<MessageEntity> get messageList {
    if (_messageList is EqualUnmodifiableListView) return _messageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messageList);
  }

  @override
  @JsonKey()
  final int fetchLimit;
  @override
  @JsonKey()
  final int offset;

  @override
  String toString() {
    return 'ChatState(asyncSnapshot: $asyncSnapshot, messageList: $messageList, fetchLimit: $fetchLimit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostStateImpl &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            const DeepCollectionEquality()
                .equals(other._messageList, _messageList) &&
            (identical(other.fetchLimit, fetchLimit) ||
                other.fetchLimit == fetchLimit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asyncSnapshot,
      const DeepCollectionEquality().hash(_messageList), fetchLimit, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostStateImplCopyWith<_$PostStateImpl> get copyWith =>
      __$$PostStateImplCopyWithImpl<_$PostStateImpl>(this, _$identity);
}

abstract class _PostState implements ChatState {
  const factory _PostState(
      {@JsonKey(ignore: true) final AsyncSnapshot<dynamic>? asyncSnapshot,
      final List<MessageEntity> messageList,
      final int fetchLimit,
      final int offset}) = _$PostStateImpl;

  @override
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot;
  @override
  List<MessageEntity> get messageList;
  @override
  int get fetchLimit;
  @override
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$$PostStateImplCopyWith<_$PostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Map<String, dynamic> args) createMessage,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Map<String, dynamic> args)? createMessage,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Map<String, dynamic> args)? createMessage,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatEventFetch value) fetch,
    required TResult Function(_ChatEventCreateMessage value) createMessage,
    required TResult Function(_ChatEventLogout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatEventFetch value)? fetch,
    TResult? Function(_ChatEventCreateMessage value)? createMessage,
    TResult? Function(_ChatEventLogout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatEventFetch value)? fetch,
    TResult Function(_ChatEventCreateMessage value)? createMessage,
    TResult Function(_ChatEventLogout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatEventFetchImplCopyWith<$Res> {
  factory _$$ChatEventFetchImplCopyWith(_$ChatEventFetchImpl value,
          $Res Function(_$ChatEventFetchImpl) then) =
      __$$ChatEventFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatEventFetchImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatEventFetchImpl>
    implements _$$ChatEventFetchImplCopyWith<$Res> {
  __$$ChatEventFetchImplCopyWithImpl(
      _$ChatEventFetchImpl _value, $Res Function(_$ChatEventFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatEventFetchImpl extends _ChatEventFetch {
  _$ChatEventFetchImpl() : super._();

  @override
  String toString() {
    return 'ChatEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatEventFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Map<String, dynamic> args) createMessage,
    required TResult Function() logout,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Map<String, dynamic> args)? createMessage,
    TResult? Function()? logout,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Map<String, dynamic> args)? createMessage,
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
    required TResult Function(_ChatEventFetch value) fetch,
    required TResult Function(_ChatEventCreateMessage value) createMessage,
    required TResult Function(_ChatEventLogout value) logout,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatEventFetch value)? fetch,
    TResult? Function(_ChatEventCreateMessage value)? createMessage,
    TResult? Function(_ChatEventLogout value)? logout,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatEventFetch value)? fetch,
    TResult Function(_ChatEventCreateMessage value)? createMessage,
    TResult Function(_ChatEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _ChatEventFetch extends ChatEvent {
  factory _ChatEventFetch() = _$ChatEventFetchImpl;
  _ChatEventFetch._() : super._();
}

/// @nodoc
abstract class _$$ChatEventCreateMessageImplCopyWith<$Res> {
  factory _$$ChatEventCreateMessageImplCopyWith(
          _$ChatEventCreateMessageImpl value,
          $Res Function(_$ChatEventCreateMessageImpl) then) =
      __$$ChatEventCreateMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> args});
}

/// @nodoc
class __$$ChatEventCreateMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatEventCreateMessageImpl>
    implements _$$ChatEventCreateMessageImplCopyWith<$Res> {
  __$$ChatEventCreateMessageImplCopyWithImpl(
      _$ChatEventCreateMessageImpl _value,
      $Res Function(_$ChatEventCreateMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
  }) {
    return _then(_$ChatEventCreateMessageImpl(
      null == args
          ? _value._args
          : args // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$ChatEventCreateMessageImpl extends _ChatEventCreateMessage {
  _$ChatEventCreateMessageImpl(final Map<String, dynamic> args)
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
    return 'ChatEvent.createMessage(args: $args)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatEventCreateMessageImpl &&
            const DeepCollectionEquality().equals(other._args, _args));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_args));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatEventCreateMessageImplCopyWith<_$ChatEventCreateMessageImpl>
      get copyWith => __$$ChatEventCreateMessageImplCopyWithImpl<
          _$ChatEventCreateMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Map<String, dynamic> args) createMessage,
    required TResult Function() logout,
  }) {
    return createMessage(args);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Map<String, dynamic> args)? createMessage,
    TResult? Function()? logout,
  }) {
    return createMessage?.call(args);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Map<String, dynamic> args)? createMessage,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (createMessage != null) {
      return createMessage(args);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatEventFetch value) fetch,
    required TResult Function(_ChatEventCreateMessage value) createMessage,
    required TResult Function(_ChatEventLogout value) logout,
  }) {
    return createMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatEventFetch value)? fetch,
    TResult? Function(_ChatEventCreateMessage value)? createMessage,
    TResult? Function(_ChatEventLogout value)? logout,
  }) {
    return createMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatEventFetch value)? fetch,
    TResult Function(_ChatEventCreateMessage value)? createMessage,
    TResult Function(_ChatEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (createMessage != null) {
      return createMessage(this);
    }
    return orElse();
  }
}

abstract class _ChatEventCreateMessage extends ChatEvent {
  factory _ChatEventCreateMessage(final Map<String, dynamic> args) =
      _$ChatEventCreateMessageImpl;
  _ChatEventCreateMessage._() : super._();

  Map<String, dynamic> get args;
  @JsonKey(ignore: true)
  _$$ChatEventCreateMessageImplCopyWith<_$ChatEventCreateMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatEventLogoutImplCopyWith<$Res> {
  factory _$$ChatEventLogoutImplCopyWith(_$ChatEventLogoutImpl value,
          $Res Function(_$ChatEventLogoutImpl) then) =
      __$$ChatEventLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatEventLogoutImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatEventLogoutImpl>
    implements _$$ChatEventLogoutImplCopyWith<$Res> {
  __$$ChatEventLogoutImplCopyWithImpl(
      _$ChatEventLogoutImpl _value, $Res Function(_$ChatEventLogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatEventLogoutImpl extends _ChatEventLogout {
  _$ChatEventLogoutImpl() : super._();

  @override
  String toString() {
    return 'ChatEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatEventLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Map<String, dynamic> args) createMessage,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Map<String, dynamic> args)? createMessage,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Map<String, dynamic> args)? createMessage,
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
    required TResult Function(_ChatEventFetch value) fetch,
    required TResult Function(_ChatEventCreateMessage value) createMessage,
    required TResult Function(_ChatEventLogout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatEventFetch value)? fetch,
    TResult? Function(_ChatEventCreateMessage value)? createMessage,
    TResult? Function(_ChatEventLogout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatEventFetch value)? fetch,
    TResult Function(_ChatEventCreateMessage value)? createMessage,
    TResult Function(_ChatEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _ChatEventLogout extends ChatEvent {
  factory _ChatEventLogout() = _$ChatEventLogoutImpl;
  _ChatEventLogout._() : super._();
}
