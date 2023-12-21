// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageEntity {
  String get text => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  bool get isSentByMe => throw _privateConstructorUsedError;
  UserEntity? get autor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageEntityCopyWith<MessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEntityCopyWith<$Res> {
  factory $MessageEntityCopyWith(
          MessageEntity value, $Res Function(MessageEntity) then) =
      _$MessageEntityCopyWithImpl<$Res, MessageEntity>;
  @useResult
  $Res call({String text, String date, bool isSentByMe, UserEntity? autor});

  $UserEntityCopyWith<$Res>? get autor;
}

/// @nodoc
class _$MessageEntityCopyWithImpl<$Res, $Val extends MessageEntity>
    implements $MessageEntityCopyWith<$Res> {
  _$MessageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? date = null,
    Object? isSentByMe = null,
    Object? autor = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      isSentByMe: null == isSentByMe
          ? _value.isSentByMe
          : isSentByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      autor: freezed == autor
          ? _value.autor
          : autor // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get autor {
    if (_value.autor == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.autor!, (value) {
      return _then(_value.copyWith(autor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageEntityImplCopyWith<$Res>
    implements $MessageEntityCopyWith<$Res> {
  factory _$$MessageEntityImplCopyWith(
          _$MessageEntityImpl value, $Res Function(_$MessageEntityImpl) then) =
      __$$MessageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String date, bool isSentByMe, UserEntity? autor});

  @override
  $UserEntityCopyWith<$Res>? get autor;
}

/// @nodoc
class __$$MessageEntityImplCopyWithImpl<$Res>
    extends _$MessageEntityCopyWithImpl<$Res, _$MessageEntityImpl>
    implements _$$MessageEntityImplCopyWith<$Res> {
  __$$MessageEntityImplCopyWithImpl(
      _$MessageEntityImpl _value, $Res Function(_$MessageEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? date = null,
    Object? isSentByMe = null,
    Object? autor = freezed,
  }) {
    return _then(_$MessageEntityImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      isSentByMe: null == isSentByMe
          ? _value.isSentByMe
          : isSentByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      autor: freezed == autor
          ? _value.autor
          : autor // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }
}

/// @nodoc

class _$MessageEntityImpl implements _MessageEntity {
  _$MessageEntityImpl(
      {this.text = '', this.date = '', this.isSentByMe = false, this.autor});

  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final bool isSentByMe;
  @override
  final UserEntity? autor;

  @override
  String toString() {
    return 'MessageEntity(text: $text, date: $date, isSentByMe: $isSentByMe, autor: $autor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageEntityImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isSentByMe, isSentByMe) ||
                other.isSentByMe == isSentByMe) &&
            (identical(other.autor, autor) || other.autor == autor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, date, isSentByMe, autor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageEntityImplCopyWith<_$MessageEntityImpl> get copyWith =>
      __$$MessageEntityImplCopyWithImpl<_$MessageEntityImpl>(this, _$identity);
}

abstract class _MessageEntity implements MessageEntity {
  factory _MessageEntity(
      {final String text,
      final String date,
      final bool isSentByMe,
      final UserEntity? autor}) = _$MessageEntityImpl;

  @override
  String get text;
  @override
  String get date;
  @override
  bool get isSentByMe;
  @override
  UserEntity? get autor;
  @override
  @JsonKey(ignore: true)
  _$$MessageEntityImplCopyWith<_$MessageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
