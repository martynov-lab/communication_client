import 'package:communication_client/feature/main/presentation/components/item_participant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ParticipantWithoutVideo extends StatelessWidget {
  const ParticipantWithoutVideo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return

    // BlocBuilder<VideoConferenceCubit, VideoConferenceState>(
    //   builder: (context, state) {
    // if (state.participantsWithoutVideo != []) {
    //   for (var element in state.participantsMediaStream.entries) {
    //     Helper.printGreen(
    //         'Media WithoutVideo mediaStreamVideo:${element.key} - ${element.value.mediaStream?.getVideoTracks()}');
    //     // Helper.printGreen(
    //     //     'Media mediaStreamAudio:${element.key} - ${element.value.mediaStream?.getAudioTracks()}');
    //   }
    //   List<ParticipantEntity> participantsWithoutVideo =
    //       state.participantsWithoutVideo;
    //   int itemCount = participantsWithoutVideo.length;
    //   for (var element in participantsWithoutVideo) {
    //     Helper.printRed(
    //         'Avatar ${element.feedId} - url:${element.avatarUrl}');
    //   }
    return ListView.builder(
        itemCount: 2, //itemCount,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: ((context, index) {
          return ItemParticipant(
              // participant: participantsWithoutVideo[index]
              );
        }));
    // } else {
    //   return const SizedBox.shrink();
    // }
    // },
    // );
  }
}
