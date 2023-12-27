import 'package:communication_client/app/presentation/components/custom_icons.dart';
import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:communication_client/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:communication_client/feature/main/domain/entities/message_entity/message_entity.dart';
import 'package:flutter/material.dart';

class MessagesList extends StatefulWidget {
  const MessagesList({super.key});

  @override
  State<MessagesList> createState() => _MessagesListState();
}

class _MessagesListState extends State<MessagesList> {
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<MessageEntity> messages = [
      MessageEntity(
        text: 'Скоро тут будут чат комнаты',
        date: DateTime.now().toString(),
        isSentByMe: false,
        autor: const UserEntity(
            userId: '01',
            userName: 'sergey@main.ru',
            email: 'sergey@main.ru',
            firstname: 'Сергей'),
      ),
      MessageEntity(
        text: 'Да да. Очень скоро!',
        date: DateTime.now().toString(),
        isSentByMe: true,
        autor: const UserEntity(
            userId: '02',
            userName: 'andrey@flutter.ru',
            email: 'andrey@flutter.ru',
            firstname: 'Андрей'),
      ),
      // MessageEntity(
      //   text: 'Когда будет готов чат?',
      //   date: DateTime.now().toString(),
      //   isSentByMe: false,
      //   autor: const UserEntity(
      //       userId: 01,
      //       userName: 'sergey@main.ru',
      //       email: 'sergey@main.ru',
      //       firstname: 'Сергей'),
      // ),
      // MessageEntity(
      //   text: 'Ну мне еще немного осталось. ',
      //   date: DateTime.now().toString(),
      //   isSentByMe: true,
      //   autor: const UserEntity(
      //       userId: 02,
      //       userName: 'andrey@flutter.ru',
      //       email: 'andrey@flutter.ru',
      //       firstname: 'Андрей'),
      // ),
      // MessageEntity(
      //   text: 'Метод для отправки сообщений осталось доделать и сверстать UI',
      //   date: DateTime.now().toString(),
      //   isSentByMe: true,
      //   autor: const UserEntity(
      //       userId: 02,
      //       userName: 'andrey@flutter.ru',
      //       email: 'andrey@flutter.ru',
      //       firstname: 'Андрей'),
      // ),
      // MessageEntity(
      //   text: 'ОК. Жду релиз',
      //   date: DateTime.now().toString(),
      //   isSentByMe: false,
      //   autor: const UserEntity(
      //       userId: 01,
      //       userName: 'sergey@main.ru',
      //       email: 'sergey@main.ru',
      //       firstname: 'Сергей'),
      // ),
    ]; //.reversed.toList();
    return Container(
      // width: double.maxFinite,
      height: 300,
      child: Column(
        // mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(5),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return Align(
                    alignment: messages[index].isSentByMe
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Card(
                      margin: const EdgeInsets.all(5),
                      color: messages[index].isSentByMe
                          ? ColorApp.chatMessageCurrentUser
                          : ColorApp.chatMessageParticipant,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: const BorderSide(
                          color: ColorApp.chatMessageBorder,
                        ),
                      ),
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          messages[index].text,
                          style: const TextStyle(color: ColorApp.chatText),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Container(
            height: 1,
            color: ColorApp.chatHintText,
          ),
          Container(
            // color: Colors.grey[800],
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: TextField(
              controller: _messageController,
              style: const TextStyle(color: ColorApp.chatText),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(8),
                hintText: 'Сообщение',
                hintStyle: const TextStyle(color: ColorApp.chatHintText),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                suffixIcon: SizedBox(
                  width: 30,
                  height: 30,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      backgroundColor: ColorApp.blueButton,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 2, vertical: 2),
                      textStyle: const TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      // context
                      //     .read<VideoConferenceCubit>()
                      //     .sentMessage(_messageController.text);
                      _messageController.clear();
                    },
                    child: const Icon(
                      CustomIcon.sent,
                      size: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
