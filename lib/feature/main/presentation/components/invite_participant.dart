import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';

class InviteParticipant extends StatelessWidget {
  final String roomId;
  const InviteParticipant({Key? key, required this.roomId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          // Share.share('${locator.get<AppConfig>().mainUrl}/guest/$hash');
          // Helper.printYellow(
          //     'Ссылка SignalR MediaStatus!!!!!!!!!: ${locator.get<AppConfig>().mainUrl}/guest/$hash');
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
