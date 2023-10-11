import 'package:flutter/material.dart';

import 'package:communication_client/app/presentation/components/custom_icons.dart';
import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:communication_client/feature/main/presentation/components/chat_video_room/messages_list.dart';

class ChatVideoRoom extends StatefulWidget {
  const ChatVideoRoom({super.key});

  @override
  State<ChatVideoRoom> createState() => _ChatVideoRoomState();
}

class _ChatVideoRoomState extends State<ChatVideoRoom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  right: 10,
                ),
                child: Center(
                  child: Container(
                    height: 4,
                    width: 32,
                    decoration: const BoxDecoration(
                      color: ColorApp.catchBottomSheet,
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 15),
                child: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    child: const Icon(
                      CustomIcon.close,
                      color: ColorApp.grey,
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        const MessagesList(),
      ],
    );
  }
}
