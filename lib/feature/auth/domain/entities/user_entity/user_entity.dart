import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    @Default(0) int userId,
    required String userName,
    required String? email,
    required String? firstname,
    @Default('') String surname,
    String? avatarUrl,
    String? externalAvatarUrl,
    @Default('') String phoneNumber,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
