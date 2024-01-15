part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    @JsonKey(ignore: true) AsyncSnapshot? asyncSnapshot,
    @Default([]) List<MessageEntity> messageList,
    @Default(15) int fetchLimit,
    @Default(0) int offset,
  }) = _PostState;
}
