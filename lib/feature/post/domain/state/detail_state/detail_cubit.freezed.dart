// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailState {
  AsyncSnapshot<dynamic> get asyncSnapshot =>
      throw _privateConstructorUsedError;
  PostEntity? get postEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailStateCopyWith<DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
  @useResult
  $Res call({AsyncSnapshot<dynamic> asyncSnapshot, PostEntity? postEntity});

  $PostEntityCopyWith<$Res>? get postEntity;
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = null,
    Object? postEntity = freezed,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: null == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>,
      postEntity: freezed == postEntity
          ? _value.postEntity
          : postEntity // ignore: cast_nullable_to_non_nullable
              as PostEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostEntityCopyWith<$Res>? get postEntity {
    if (_value.postEntity == null) {
      return null;
    }

    return $PostEntityCopyWith<$Res>(_value.postEntity!, (value) {
      return _then(_value.copyWith(postEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailStateImplCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$$DetailStateImplCopyWith(
          _$DetailStateImpl value, $Res Function(_$DetailStateImpl) then) =
      __$$DetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncSnapshot<dynamic> asyncSnapshot, PostEntity? postEntity});

  @override
  $PostEntityCopyWith<$Res>? get postEntity;
}

/// @nodoc
class __$$DetailStateImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailStateImpl>
    implements _$$DetailStateImplCopyWith<$Res> {
  __$$DetailStateImplCopyWithImpl(
      _$DetailStateImpl _value, $Res Function(_$DetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = null,
    Object? postEntity = freezed,
  }) {
    return _then(_$DetailStateImpl(
      asyncSnapshot: null == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>,
      postEntity: freezed == postEntity
          ? _value.postEntity
          : postEntity // ignore: cast_nullable_to_non_nullable
              as PostEntity?,
    ));
  }
}

/// @nodoc

class _$DetailStateImpl implements _DetailState {
  const _$DetailStateImpl(
      {this.asyncSnapshot = const AsyncSnapshot.nothing(), this.postEntity});

  @override
  @JsonKey()
  final AsyncSnapshot<dynamic> asyncSnapshot;
  @override
  final PostEntity? postEntity;

  @override
  String toString() {
    return 'DetailState(asyncSnapshot: $asyncSnapshot, postEntity: $postEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStateImpl &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            (identical(other.postEntity, postEntity) ||
                other.postEntity == postEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asyncSnapshot, postEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      __$$DetailStateImplCopyWithImpl<_$DetailStateImpl>(this, _$identity);
}

abstract class _DetailState implements DetailState {
  const factory _DetailState(
      {final AsyncSnapshot<dynamic> asyncSnapshot,
      final PostEntity? postEntity}) = _$DetailStateImpl;

  @override
  AsyncSnapshot<dynamic> get asyncSnapshot;
  @override
  PostEntity? get postEntity;
  @override
  @JsonKey(ignore: true)
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
