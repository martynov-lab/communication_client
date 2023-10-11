import 'dart:io';
import 'package:communication_client/app/presentation/components/app_bottomshet.dart';
import 'package:communication_client/app/presentation/components/app_button.dart';
import 'package:communication_client/app/presentation/components/app_snackbar/top_snack_bar.dart';
import 'package:communication_client/app/presentation/components/custom_icons.dart';
import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:communication_client/feature/main/domain/state/video_room_bloc/video_room_bloc.dart';
import 'package:communication_client/feature/main/presentation/components/button_room.dart';
import 'package:communication_client/feature/main/presentation/components/chat_video_room/chat_video_room.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VideoRoom extends StatelessWidget {
  //final RoomEntity room;
  final String? roomId;

  const VideoRoom({
    Key? key,
    //required this.room,
    required this.roomId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> actions = [
      // AppButton(
      //   text: 'Завершить для всех',
      //   onPressed: () {
      //     context.read<VideoRoomCubit>().deleteRoom(hash: hash ?? '');
      //     Navigator.of(context).pop();
      //   },
      //   colorButton: const Color.fromARGB(255, 93, 134, 239),
      //   style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
      //   isActive: true,
      // ),
      // const SizedBox(height: 20),
      // AppButton(
      //   text: 'Выйти',
      //   onPressed: () {
      //     context.read<VideoConferenceCubit>().leaveRoom();
      //     Navigator.of(context).popUntil(ModalRoute.withName('/'));
      //   },
      //   colorButton: const Color.fromARGB(255, 211, 47, 47),
      //   style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
      //   isActive: true,
      // ),
    ];

    return BlocConsumer<VideoRoomBloc, VideoRoomState>(
        listener: (context, state) {
      // if (state.asyncSnapshot.hasError) {
      // showErrorSnackBar(context,
      // ErrorEntity.fromException(state.asyncSnapshot.error).message);

      // Future.delayed(const Duration(seconds: 2), () {
      //   Navigator.of(context).pop();
      // });
      // }
    }, builder: (context, state) {
      // Map<int, ParticipantEntity> participantsEntity = {};
      // bool isAudioMute = state.localParticipantEntity?.audioStatus ?? false;
      //TODO исправить в janus_client. Убрать "!" в Helper.setMicrophoneMute в track.enabled. И потом урать тут лишний "!"
      // state.localMediaStream?.videoRenderer?.muted = !isAudioMute;

      // Helper.printRed('BlocState: ${state}');
      return Scaffold(
        backgroundColor: ColorApp.backgroundDark,
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: ColorApp.backgroundDark,
            systemNavigationBarColor: ColorApp.backgroundDark,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light,
          ),
          centerTitle: false,
          titleSpacing: 0.0,
          title: Transform(
            transform: Matrix4.translationValues(-35.0, 0.0, 0.0),
            child: GestureDetector(
              child: const Text('Letsmeet',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontFamily: Font.inter,
                  )),
              onTap: () {
                // context.read<VideoRoomCubit>().deleteRoom(hash: hash ?? '');
              },
            ),
          ),
          leading: const SizedBox(),
          actions: [
            IconButton(
                onPressed: () {
                  showInfoSnackBar(context,
                      'Страница с настройками комнаты находится в разработкe');
                },
                icon: const Icon(
                  CustomIcon.settings,
                  color: ColorApp.grey,
                ))
            //   IconButton(
            //       icon: isShare
            //           ? const Icon(
            //               Icons.screen_share_outlined, // mobile_screen_share
            //               color: Colors.blue,
            //               size: 30,
            //             )
            //           : const Icon(
            //               Icons.screen_share_outlined, // mobile_screen_share
            //               color: Colors.white,
            //               size: 30,
            //             ),
            //       onPressed: () {
            //         if (statusVideo == false) {
            //           _videoConferenceBloc.action
            //               .add(VideoConferenceChangeMediaStatus(
            //             roomId: widget.room.roomId,
            //             audioStatus: statusAudio,
            //             videoStatus: true, //!isShare,
            //           ));
            //           //шара экрана
            //           _videoConferenceBloc.action
            //               .add(VideoConferenceScreenShara(
            //             roomId: widget.room.roomId,
            //             feedId: feedIdLocalStream,
            //             isShare: !isShare, //true
            //             mediaStream: localMediaStream.mediaStreams,
            //           ));
            //         } else {
            //           _videoConferenceBloc.action
            //               .add(VideoConferenceScreenShara(
            //             roomId: widget.room.roomId,
            //             feedId: feedIdLocalStream,
            //             isShare: !isShare, //true
            //             mediaStream: localMediaStream.mediaStreams,
            //           ));
            //         }
            //       }),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: CustomScrollView(
                  slivers: <Widget>[
                    Center(
                      child: Text(roomId ?? ''),
                    )
                    // Grid участников с видео контентом
                    // GridWithVideo(
                    //   // localMediaStream: localMediaStream,
                    //   // participantsEntity: participantsEntity,
                    //   // participantsMediaStream: participantsMediaStream,
                    //   // isMyVideoStatus: statusVideo,
                    //   // myFeedId: myFeedId,
                    //   hash: hash ?? '',
                    // ),

                    //Список участников отключивших видео + кнопка пригласить
                    // SliverToBoxAdapter(
                    //   child: ListWithoutVideo(hash: hash ?? ''),
                    // ),
                  ],
                ),
              ),
              //Кнопки видео комнаты
              Container(
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
                            //   colorButtomSheet: ColorApp.chatBackgroud,
                            //   child: const ChatVideoRoom(),
                            //   isWrapContent: true,
                            //   isExpanded: false,
                            //   enableDrag: true,
                            //   indentationFromTop: 20,
                            // );
                          },
                        ),
                        // видео
                        ButtonRoom(
                          shadow: //state.localParticipantEntity?.videoStatus ??
                              false
                                  ? [
                                      BoxShadow(
                                        color: ColorApp.blueButton
                                            .withOpacity(0.6),
                                        spreadRadius: 1,
                                        blurRadius: 16,
                                        offset: const Offset(-8, 0),
                                      ),
                                      BoxShadow(
                                        color: ColorApp.blueButton
                                            .withOpacity(0.6),
                                        spreadRadius: 1,
                                        blurRadius: 16,
                                        offset: const Offset(8, 0),
                                      ),
                                      BoxShadow(
                                        color: ColorApp.blueButton
                                            .withOpacity(0.2),
                                        spreadRadius: 16,
                                        blurRadius: 32,
                                        offset: const Offset(-8, 0),
                                      ),
                                      BoxShadow(
                                        color: ColorApp.blueButton
                                            .withOpacity(0.2),
                                        spreadRadius: 16,
                                        blurRadius: 32,
                                        offset: const Offset(8, 0),
                                      )
                                    ]
                                  : [],
                          isActive: //state.localParticipantEntity?.videoStatus ??
                              false,
                          icon:
                              //state.localParticipantEntity?.videoStatus ??
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
                            //       isMyAudio: state.localParticipantEntity
                            //               ?.audioStatus ??
                            //           false,
                            //       isMyVideo: !(state.localParticipantEntity
                            //               ?.videoStatus ??
                            //           false),
                            //     );

                            // if (isShare == false) {
                            //   context
                            //       .read<VideoConferenceCubit>()
                            //       .screenShare();
                            // } else {
                            //   showInfoSnackBar(
                            //       context, 'Выключите шару экрана');
                            // }
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
                            if ( //state.localParticipantEntity?.userRole == "Organizator"
                                true) {
                              showDialog(
                                context: context,
                                builder: (context) => Platform.isAndroid
                                    ? AlertDialog(
                                        backgroundColor: const Color.fromARGB(
                                            255, 35, 44, 59),
                                        actionsPadding:
                                            const EdgeInsets.all(20),
                                        scrollable: false,
                                        actions: actions,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                        backgroundColor: const Color.fromARGB(
                                            255, 35, 44, 59),
                                        actionsPadding:
                                            const EdgeInsets.all(20),
                                        scrollable: false,
                                        actions: [actions[2]],
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                        color: ColorApp.blueButton
                                            .withOpacity(0.6),
                                        spreadRadius: 1,
                                        blurRadius: 16,
                                        offset: const Offset(-8, 0),
                                      ),
                                      BoxShadow(
                                        color: ColorApp.blueButton
                                            .withOpacity(0.6),
                                        spreadRadius: 1,
                                        blurRadius: 16,
                                        offset: const Offset(8, 0),
                                      ),
                                      BoxShadow(
                                        color: ColorApp.blueButton
                                            .withOpacity(0.2),
                                        spreadRadius: 16,
                                        blurRadius: 32,
                                        offset: const Offset(-8, 0),
                                      ),
                                      BoxShadow(
                                        color: ColorApp.blueButton
                                            .withOpacity(0.2),
                                        spreadRadius: 16,
                                        blurRadius: 32,
                                        offset: const Offset(8, 0),
                                      )
                                    ]
                                  : [],
                          isActive: //state.localParticipantEntity?.audioStatus ??
                              false,
                          icon:
                              //state.localParticipantEntity?.audioStatus ??
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
                            // .read<VideoConferenceCubit>()
                            // .changeMediaStatus(
                            //   feedId: state.myFeedId,
                            //   isMyAudio: !(state.localParticipantEntity
                            //           ?.audioStatus ??
                            //       false),
                            //   isMyVideo: state.localParticipantEntity
                            //           ?.videoStatus ??
                            //       false,
                            // );
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
                            //   child: MenuVideoRoom(
                            //     room: room,
                            //     hash: hash ?? '',
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
            ],
          ),
        ),
      );
      // });
    });
  }
}

//  ClipRRect(
//                                       borderRadius:
//                                           BorderRadius.circular(8),
//                                       child: RTCVideoView(
//                                         items[index]
//                                             .mediaStreams
//                                             .videoRenderer,
//                                         filterQuality:
//                                             FilterQuality.medium,
//                                         objectFit: RTCVideoViewObjectFit
//                                             .RTCVideoViewObjectFitCover,
//                                         mirror: true,
//                                       ),
//                                     )
