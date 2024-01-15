import 'package:freezed_annotation/freezed_annotation.dart';

part 'autor_entity.freezed.dart';
part 'autor_entity.g.dart';

@freezed
class AutorEntity with _$AutorEntity {
  const factory AutorEntity({
    required int id,
  }) = _AutorEntity;

  factory AutorEntity.fromJson(Map<String, dynamic> json) =>
      _$AutorEntityFromJson(json);
}
