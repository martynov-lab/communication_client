// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autor_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AutorEntity _$AutorEntityFromJson(Map<String, dynamic> json) {
  return _AutorEntity.fromJson(json);
}

/// @nodoc
mixin _$AutorEntity {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutorEntityCopyWith<AutorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutorEntityCopyWith<$Res> {
  factory $AutorEntityCopyWith(
          AutorEntity value, $Res Function(AutorEntity) then) =
      _$AutorEntityCopyWithImpl<$Res, AutorEntity>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$AutorEntityCopyWithImpl<$Res, $Val extends AutorEntity>
    implements $AutorEntityCopyWith<$Res> {
  _$AutorEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AutorEntityCopyWith<$Res>
    implements $AutorEntityCopyWith<$Res> {
  factory _$$_AutorEntityCopyWith(
          _$_AutorEntity value, $Res Function(_$_AutorEntity) then) =
      __$$_AutorEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_AutorEntityCopyWithImpl<$Res>
    extends _$AutorEntityCopyWithImpl<$Res, _$_AutorEntity>
    implements _$$_AutorEntityCopyWith<$Res> {
  __$$_AutorEntityCopyWithImpl(
      _$_AutorEntity _value, $Res Function(_$_AutorEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_AutorEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AutorEntity implements _AutorEntity {
  const _$_AutorEntity({required this.id});

  factory _$_AutorEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AutorEntityFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'AutorEntity(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AutorEntity &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AutorEntityCopyWith<_$_AutorEntity> get copyWith =>
      __$$_AutorEntityCopyWithImpl<_$_AutorEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AutorEntityToJson(
      this,
    );
  }
}

abstract class _AutorEntity implements AutorEntity {
  const factory _AutorEntity({required final int id}) = _$_AutorEntity;

  factory _AutorEntity.fromJson(Map<String, dynamic> json) =
      _$_AutorEntity.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_AutorEntityCopyWith<_$_AutorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
