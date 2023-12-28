// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InputState {
  String? get value => throw _privateConstructorUsedError;
  bool? get isInputValid => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputStateCopyWith<InputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputStateCopyWith<$Res> {
  factory $InputStateCopyWith(
          InputState value, $Res Function(InputState) then) =
      _$InputStateCopyWithImpl<$Res, InputState>;
  @useResult
  $Res call({String? value, bool? isInputValid, String? errorMessage});
}

/// @nodoc
class _$InputStateCopyWithImpl<$Res, $Val extends InputState>
    implements $InputStateCopyWith<$Res> {
  _$InputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? isInputValid = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      isInputValid: freezed == isInputValid
          ? _value.isInputValid
          : isInputValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputStateImplCopyWith<$Res>
    implements $InputStateCopyWith<$Res> {
  factory _$$InputStateImplCopyWith(
          _$InputStateImpl value, $Res Function(_$InputStateImpl) then) =
      __$$InputStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? value, bool? isInputValid, String? errorMessage});
}

/// @nodoc
class __$$InputStateImplCopyWithImpl<$Res>
    extends _$InputStateCopyWithImpl<$Res, _$InputStateImpl>
    implements _$$InputStateImplCopyWith<$Res> {
  __$$InputStateImplCopyWithImpl(
      _$InputStateImpl _value, $Res Function(_$InputStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? isInputValid = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$InputStateImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      isInputValid: freezed == isInputValid
          ? _value.isInputValid
          : isInputValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InputStateImpl implements _InputState {
  const _$InputStateImpl({this.value, this.isInputValid, this.errorMessage});

  @override
  final String? value;
  @override
  final bool? isInputValid;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'InputState(value: $value, isInputValid: $isInputValid, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputStateImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isInputValid, isInputValid) ||
                other.isInputValid == isInputValid) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, value, isInputValid, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputStateImplCopyWith<_$InputStateImpl> get copyWith =>
      __$$InputStateImplCopyWithImpl<_$InputStateImpl>(this, _$identity);
}

abstract class _InputState implements InputState {
  const factory _InputState(
      {final String? value,
      final bool? isInputValid,
      final String? errorMessage}) = _$InputStateImpl;

  @override
  String? get value;
  @override
  bool? get isInputValid;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$InputStateImplCopyWith<_$InputStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
