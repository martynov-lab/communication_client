import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:communication_client/feature/main/presentation/components/invite_participant.dart';
import 'package:communication_client/feature/main/presentation/components/participant_without_video.dart';
import 'package:flutter/material.dart';

class ListWithoutVideo extends StatelessWidget {
  final String roomId;
  const ListWithoutVideo({
    Key? key,
    required this.roomId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorApp.backgroundCards,
        border: Border.all(width: 1, color: ColorApp.borderCards),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // const ParticipantWithoutVideo(),
          InviteParticipant(roomId: roomId),
        ],
      ),
    );
  }
}
