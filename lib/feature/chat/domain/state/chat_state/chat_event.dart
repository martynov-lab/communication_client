part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const ChatEvent._();

  factory ChatEvent.fetch() = _ChatEventFetch;
  factory ChatEvent.createMessage(Map<String, dynamic> args) =
      _ChatEventCreateMessage;
  factory ChatEvent.logout() = _ChatEventLogout;
}
