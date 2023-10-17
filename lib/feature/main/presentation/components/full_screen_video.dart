import 'dart:io';

import 'package:communication_client/app/presentation/components/app_button.dart';
import 'package:communication_client/app/presentation/components/custom_icons.dart';
import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:communication_client/feature/main/domain/state/video_room_bloc/video_room_bloc.dart';
import 'package:communication_client/feature/main/presentation/components/button_room.dart';
import 'package:communication_client/feature/main/presentation/components/render_media.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

class FullScreenVideo extends StatefulWidget {
  final RTCVideoRenderer videoRenderer;
  final String? room;
  const FullScreenVideo({
    super.key,
    required this.videoRenderer,
    required this.room,
  });

  @override
  State<FullScreenVideo> createState() => _FullScreenVideoState();
}

class _FullScreenVideoState extends State<FullScreenVideo> {
  // @override
  // void initState() {
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //       overlays: SystemUiOverlay.values);

  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    List<Widget> actions = [
      AppButton(
        text: 'Завершить для всех',
        onPressed: () {
          // context.read<VideoConferenceCubit>().callEnd();
          // context
          //     .read<VideoRoomCubit>()
          //     .deleteRoom(hash: widget.room?.hashId ?? '');
          Navigator.of(context).pop();
        },
        isActive: true,
      ),
      const SizedBox(height: 20),
      AppButton(
        text: 'Выйти',
        onPressed: () {
          // context.read<VideoConferenceCubit>().leaveRoom();
          Navigator.of(context).popUntil(ModalRoute.withName('/'));
        },
        isActive: true,
      ),
    ];
    return BlocBuilder<VideoRoomBloc, VideoRoomState>(
        builder: (context, state) {
      return Stack(
        children: [
          Scaffold(
              extendBodyBehindAppBar: true,
              backgroundColor: ColorApp.backgroundDark,
              appBar: AppBar(
                systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent,
                  systemNavigationBarColor: ColorApp.backgroundDark,
                  statusBarIconBrightness:
                      Brightness.light, // For Android (light icons)
                  statusBarBrightness:
                      Brightness.light, // For iOS (light icons)
                ),
                leading: const SizedBox(),
              ),
              body: RenderMedia(
                borderRadius: 0,
                quality: FilterQuality.medium,
                videoRenderer: widget.videoRenderer,
              )),
          Positioned(
            bottom: 0,
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20 /*, left: 10, right: 20*/),
                child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Чат
                      ButtonRoom(
                        isActive: false,
                        icon: const Icon(
                          CustomIcon.chatOutlined,
                          color: ColorApp.grey,
                        ),
                        color: ColorApp.blueButton,
                        diameter: 40,
                        action: () {
                          // showInfoSnackBar(context,
                          //     'Чат видеоконференции находится в разработкe');
                          // AppBottomSheet.showButtomSheet(
                          //   context: context,
                          //   colorButtomSheet: ColorApp.backgroundDark,
                          //   child: const ChatVideoRoom(),
                          //   isWrapContent: true,
                          //   isExpanded: false,
                          // );
                        },
                      ),
                      // видео
                      ButtonRoom(
                        shadow: //state.localParticipantEntity?.videoStatus ??
                            false
                                ? [
                                    BoxShadow(
                                      color:
                                          ColorApp.blueButton.withOpacity(0.6),
                                      spreadRadius: 1,
                                      blurRadius: 16,
                                      offset: const Offset(-8, 0),
                                    ),
                                    BoxShadow(
                                      color:
                                          ColorApp.blueButton.withOpacity(0.6),
                                      spreadRadius: 1,
                                      blurRadius: 16,
                                      offset: const Offset(8, 0),
                                    ),
                                    BoxShadow(
                                      color:
                                          ColorApp.blueButton.withOpacity(0.2),
                                      spreadRadius: 16,
                                      blurRadius: 32,
                                      offset: const Offset(-8, 0),
                                    ),
                                    BoxShadow(
                                      color:
                                          ColorApp.blueButton.withOpacity(0.2),
                                      spreadRadius: 16,
                                      blurRadius: 32,
                                      offset: const Offset(8, 0),
                                    )
                                  ]
                                : [],
                        isActive:
                            //state.localParticipantEntity?.videoStatus ??
                            false,
                        icon: //state.localParticipantEntity?.videoStatus ??
                            false
                                ? const Icon(
                                    CustomIcon.video,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                : const Icon(
                                    CustomIcon.videoOutlined,
                                    color: ColorApp.grey,
                                    size: 20,
                                  ),
                        color: ColorApp.blueButton,
                        diameter: 40,
                        action: () {
                          // context
                          //     .read<VideoConferenceCubit>()
                          //     .changeMediaStatus(
                          //       feedId: state.myFeedId,
                          //       isMyAudio:
                          //           state.localParticipantEntity?.audioStatus ??
                          //               false,
                          //       isMyVideo: !(state
                          //               .localParticipantEntity?.videoStatus ??
                          //           false),
                          //     );
                          Navigator.of(context).pop();
                        },
                      ),
                      // выйти
                      ButtonRoom(
                        isActive: true,
                        icon: const Icon(
                          CustomIcon.close,
                          color: Colors.white,
                          size: 30,
                        ),
                        color: ColorApp.redButton,
                        diameter: 50,
                        action: () {
                          if ("state.localParticipantEntity?.userRole" ==
                              "Organizator") {
                            showDialog(
                              context: context,
                              builder: (context) => Platform.isAndroid
                                  ? AlertDialog(
                                      backgroundColor:
                                          const Color.fromARGB(255, 35, 44, 59),
                                      actionsPadding: const EdgeInsets.all(20),
                                      scrollable: false,
                                      actions: actions,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 4,
                                    )
                                  : CupertinoAlertDialog(
                                      actions: actions,
                                    ),
                            );
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) => Platform.isAndroid
                                  ? AlertDialog(
                                      backgroundColor:
                                          const Color.fromARGB(255, 35, 44, 59),
                                      actionsPadding: const EdgeInsets.all(20),
                                      scrollable: false,
                                      actions: [actions[2]],
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 4,
                                    )
                                  : CupertinoAlertDialog(
                                      actions: actions,
                                    ),
                            );
                          }
                        },
                      ),
                      // микрафон
                      ButtonRoom(
                        //!!!!!!!!!!!!!!
                        shadow: //state.localParticipantEntity?.audioStatus ??
                            false
                                ? [
                                    BoxShadow(
                                      color:
                                          ColorApp.blueButton.withOpacity(0.6),
                                      spreadRadius: 1,
                                      blurRadius: 16,
                                      offset: const Offset(-8, 0),
                                    ),
                                    BoxShadow(
                                      color:
                                          ColorApp.blueButton.withOpacity(0.6),
                                      spreadRadius: 1,
                                      blurRadius: 16,
                                      offset: const Offset(8, 0),
                                    ),
                                    BoxShadow(
                                      color:
                                          ColorApp.blueButton.withOpacity(0.2),
                                      spreadRadius: 16,
                                      blurRadius: 32,
                                      offset: const Offset(-8, 0),
                                    ),
                                    BoxShadow(
                                      color:
                                          ColorApp.blueButton.withOpacity(0.2),
                                      spreadRadius: 16,
                                      blurRadius: 32,
                                      offset: const Offset(8, 0),
                                    )
                                  ]
                                : [],
                        isActive:
                            //state.localParticipantEntity?.audioStatus ??
                            false,
                        icon: //state.localParticipantEntity?.audioStatus ??
                            false
                                ? const Icon(
                                    CustomIcon.microphone,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                : const Icon(
                                    CustomIcon.microphoneOutlined,
                                    color: ColorApp.grey,
                                    size: 20,
                                  ),
                        color: ColorApp.blueButton,
                        diameter: 40,
                        action: () {
                          // context
                          //     .read<VideoConferenceCubit>()
                          //     .changeMediaStatus(
                          //       feedId: state.myFeedId,
                          //       isMyAudio: !(state
                          //               .localParticipantEntity?.audioStatus ??
                          //           false),
                          //       isMyVideo:
                          //           state.localParticipantEntity?.videoStatus ??
                          //               false,
                          //     );
                        },
                      ),
                      // прочее
                      ButtonRoom(
                        isActive: false,
                        icon: const Icon(
                          CustomIcon.moreHoriz,
                          color: ColorApp.grey,
                        ),
                        color: ColorApp.blueButton,
                        diameter: 40,
                        action: () {
                          // AppBottomSheet.showButtomSheet(
                          //   context: context,
                          //   colorButtomSheet: ColorApp.backgroundDark,
                          //   child: MenuVideoRoom(
                          //     room: state.roomEntity,
                          //     hash: state.roomEntity?.hashId,
                          //     statusVideo:
                          //         state.localParticipantEntity?.videoStatus ??
                          //             false,
                          //     statusAudio:
                          //         state.localParticipantEntity?.audioStatus ??
                          //             false,
                          //     isShare: false,
                          //     quantityParticipants: state.participantsCount,
                          //   ),
                          //   isWrapContent: true,
                          //   isExpanded: false,
                          // );
                        },
                      ),
                      // ButtonRoom(
                      //   isActive: false,
                      //   icon: const Icon(
                      //     Icons.share,
                      //     color: Colors.white,
                      //     size: 15,
                      //   ),
                      //   color: ColorApp.blueButton,
                      //   diameter: 30,
                      //   action: () {
                      //     Share.share(
                      //         '${ApiPath.url}/guest/${widget.hash}');
                      //   },
                      // ),
                    ]),
              ),
            ),
          )
        ],
      );
    });
  }
}
