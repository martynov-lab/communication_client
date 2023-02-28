part of 'detail_cubit.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    @Default(AsyncSnapshot.nothing()) AsyncSnapshot asyncSnapshot,
    PostEntity? postEntity,
  }) = _DetailState;
}
