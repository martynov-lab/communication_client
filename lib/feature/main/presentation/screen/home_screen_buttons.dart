import 'package:communication_client/app/presentation/components/app_snackbar/top_snack_bar.dart';
import 'package:communication_client/app/presentation/components/custom_icons.dart';
import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:communication_client/app/utils/transition/fade_transition.dart';
import 'package:communication_client/feature/main/domain/state/video_room_bloc/video_room_bloc.dart';
import 'package:communication_client/feature/main/presentation/screen/video_room.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

class HomeButtons extends StatelessWidget {
  const HomeButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        //Создать встречу
        BlocListener<VideoRoomBloc, VideoRoomState>(
          listener: (context, state) {
            state.whenOrNull(created: (
              String roomId,
              RTCVideoRenderer localRenderer,
              RTCVideoRenderer remoteRenderer,
            ) {
              print('RoomId!!!!!: $roomId');
              Navigator.push(
                  context,
                  FadeRoute(
                      page: VideoRoom(
                    roomId: roomId,
                    localRenderer: localRenderer,
                    remoteRenderer: remoteRenderer,
                  )));
            }, joined: (
              String roomId,
              RTCVideoRenderer localRenderer,
              RTCVideoRenderer remoteRenderer,
            ) {
              Navigator.push(
                  context,
                  FadeRoute(
                      page: VideoRoom(
                    roomId: roomId,
                    localRenderer: localRenderer,
                    remoteRenderer: remoteRenderer,
                  )));
            });
          },
          child: GestureDetector(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              //height: 160,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                  color: ColorApp.blueButton),
              child: const Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    CustomIcon.video,
                    color: ColorApp.backgroundLight,
                    size: 60,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      bottom: 10,
                    ),
                    child: Text(
                      'Создать встречу',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: Font.inter,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              context
                  .read<VideoRoomBloc>()
                  .add(const VideoRoomEvent.creatRoom());
            },
          ),
        ),
        const SizedBox(height: 15),
        // Запланировать встречу
        GestureDetector(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            //height: 160,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                color: ColorApp.blueButtonLight),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Icon(
                    CustomIcon.stickynote,
                    color: ColorApp.blueButton,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Text(
                    'Запланировать',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: ColorApp.blueButton,
                      fontSize: 16,
                      fontFamily: Font.inter,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            showTopSnackBar(
              context,
              CustomSnackBar.info(
                message:
                    'Функционал по созданию запланированной встречи, находится в разработке',
                maxLines: 3,
                button: GestureDetector(
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onTap: () => localAnimationController.reverse(),
                ),
              ),
              displayDuration: const Duration(milliseconds: 700),
              //persistent: true,
              onAnimationControllerInit: (controller) =>
                  localAnimationController = controller,
            );
          },
        ),
        const SizedBox(height: 15),
        // Создать вебинар
        GestureDetector(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            //height: 160,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                color: ColorApp.blueButtonLight),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Icon(
                    CustomIcon.webinar,
                    color: ColorApp.blueButton,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Text(
                    'Создать вебинар',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: ColorApp.blueButton,
                      fontSize: 16,
                      fontFamily: Font.inter,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            // _videoRoomBloc.add(VideoRoomAct());
            showTopSnackBar(
              context,
              CustomSnackBar.info(
                message: 'Создание комнаты вебинара находится в разработке',
                button: GestureDetector(
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onTap: () => localAnimationController.reverse(),
                ),
              ),
              displayDuration: const Duration(milliseconds: 500),
              //persistent: true,
              onAnimationControllerInit: (controller) =>
                  localAnimationController = controller,
            );
          },
        ),
      ],
    );
  }
}
