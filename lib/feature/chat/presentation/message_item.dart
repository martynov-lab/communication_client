import 'package:communication_client/feature/chat/domain/entities/message/message_entity.dart';
import 'package:communication_client/feature/chat/presentation/chat_screen.dart';
import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget {
  final MessageEntity postEntity;
  const MessageItem({super.key, required this.postEntity});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => ChatScreen(
                      id: postEntity.id.toString(),
                    ))));
      },
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Text(postEntity.name),
              Text(postEntity.preContent ?? ''),
              Text("Автор: ${postEntity.autor?.id ?? ' '}"),
            ],
          ),
        ),
      ),
    );
  }
}
