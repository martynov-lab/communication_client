import 'package:communication_client/app/di/init_di.dart';
import 'package:communication_client/app/domain/app_config.dart';
import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:communication_client/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class InviteParticipant extends StatelessWidget {
  final String roomId;
  const InviteParticipant({super.key, required this.roomId});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () async {
          final box = context.findRenderObject() as RenderBox?;
          // Share the link to enter the room
          await Share.share(
            'poc://communucation.ru/guest/$roomId',
            // parameter [sharePositionOrigin] use to specify a global origin rect
            // for the share sheet to popover from on iPads and Macs.
            sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
          );

          Utils.printYellow(
              'Ссылка: ${locator.get<AppConfig>().baseUrl}/guest/$roomId');
        },
        child: const Row(
          children: [
            Icon(
              Icons.person_add_outlined,
              color: ColorApp.blueButton,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Пригласить участников',
                  style: TextStyle(color: ColorApp.blueButton, fontSize: 16)),
            )
          ],
        ),
      ),
    );
  }
}
