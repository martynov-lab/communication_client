import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const UserEntity._();
  const factory UserEntity({
    required String userId,
    String? userName,
    String? email,
    String? firstname,
    String? surname,
    String? avatarUrl,
    String? externalAvatarUrl,
    String? phoneNumber,
    String? accessToken,
    String? refreshToken,
  }) = _UserEntity;

  static const empty = UserEntity(userId: '');

  bool get isEmpty => this == UserEntity.empty;

  bool get isNotEmpty => this != UserEntity.empty;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
