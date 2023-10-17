import 'package:communication_client/app/presentation/components/app_snackbar/top_snack_bar.dart';
import 'package:communication_client/app/presentation/components/custom_icons.dart';
import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:communication_client/app/utils/mixins/overvlay_menu.dart';
import 'package:flutter/material.dart';

class ItemParticipant extends StatefulWidget {
  // final ParticipantEntity? participant;
  // final String myFeedId;
  // final String hash;
  const ItemParticipant({
    super.key,
    // required this.participant,
    // required this.myFeedId,
    // required this.hash,
  });

  @override
  State<ItemParticipant> createState() => _ItemParticipantState();
}

class _ItemParticipantState extends State<ItemParticipant>
    with OverlayStateMixin {
  bool isTapMenu = false;
  final LayerLink _layerLink = LayerLink();
  bool spiking = false;

  Widget itemMenu(
    String title,
    Function onTap,
  ) {
    return GestureDetector(
      onTap: () {
        onTap();
        removeOverlay();
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Text(
          title,
          style:
              const TextStyle(fontSize: 12, color: ColorApp.textColorLightGrey),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Helper.printYellow(
    //     'Avatar participant: ${locator.get<AppConfig>().apiUrl}/${widget.participant?.avatarUrl}');
    //Составной виджет преобразования
    return CompositedTransformTarget(
      link: _layerLink,
      child: Container(
        padding: const EdgeInsets.only(left: 5, top: 5, right: 0, bottom: 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            const CircleAvatar(
              radius: 15,
              backgroundColor:
                  // widget.participant?.userRole
                  'Organizator' == 'Organizator'
                      ? ColorApp.green
                      : ColorApp.blue,
              child: Text(
                // widget.participant?.display.substring(0, 1) ??
                'F',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: Font.inter,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            // Container(
            //   height: 30,
            //   width: 30,
            //   decoration: BoxDecoration(
            //     color: widget.participant?.userRole == 'Organizator'
            //         ? ColorApp.green
            //         : ColorApp.blue,
            //     borderRadius: BorderRadius.circular(15),
            //   ),
            //   child: Center(
            //     child: widget.participant?.avatarUrl != '' ||
            //             widget.participant?.avatarUrl != null
            //         ? ClipRRect(
            //             borderRadius: BorderRadius.circular(15.0),
            //             child: Image.network(
            //                 '${locator.get<AppConfig>().apiUrl}/${widget.participant?.avatarUrl}'),
            //           )
            //         : Text(widget.participant?.display.substring(0, 1) ?? 'F',
            //             textAlign: TextAlign.center,
            //             style: const TextStyle(
            //               color: Colors.white,
            //               fontSize: 18,
            //               fontFamily: Font.inter,
            //             )),
            //   ),
            // ),
            Expanded(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Participant",
                                  style: TextStyle(
                                      color: Colors.grey[300], fontSize: 14)),
                              Text(
                                  'Organizator' == 'Organizator'
                                      ? 'Организатор'
                                      : 'Участник',
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 10)),
                            ],
                          ),
                        ),
                      ),
                      // Container(
                      //   padding: const EdgeInsets.symmetric(horizontal: 5),
                      //   child: spiking
                      //       ? Icon(
                      //           CustomIcon.microphone,
                      //           color: Colors.green[600],
                      //           size: 15,
                      //         )
                      //       : Icon(
                      //           CustomIcon.microphone,
                      //           color: Colors.red[600],
                      //           size: 15,
                      //         ),
                      // ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(
                          CustomIcon.microphoneMute,
                          color: Colors.grey[600],
                          size: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: InkWell(
                          child: Icon(
                            CustomIcon.moreVert,
                            color: Colors.grey[600],
                            size: 20,
                          ),
                          onTap: () {
                            RenderBox renderBox =
                                context.findRenderObject() as RenderBox;
                            final size = renderBox.size;
                            toggleOverlay(
                              Positioned(
                                // key: ValueKey('item'),
                                width: 210,
                                child: CompositedTransformFollower(
                                  link: _layerLink,
                                  showWhenUnlinked: false,
                                  offset:
                                      Offset(size.width - 210, size.height - 2),
                                  child: Material(
                                    color: ColorApp.backgroundBottomSheet,
                                    elevation: 4.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          'Organizator' != 'Organizator'
                                              ? itemMenu('Удалить из комнаты',
                                                  () {
                                                  // _videoConferenceBloc.action.add(
                                                  //     VideoConferenceKickParticipant(
                                                  //   adminFeedId:
                                                  //       widget.adminFeedId,
                                                  //   participant:
                                                  //       widget.participant,
                                                  //   hash: widget.hash,
                                                  // ));
                                                })
                                              : const SizedBox(),
                                          itemMenu('Выключить микрафон', () {
                                            // context
                                            //     .read<VideoConferenceCubit>()
                                            //     .changeMediaStatus(
                                            //       feedId: widget.participant
                                            //               ?.feedId ??
                                            //           -1,
                                            //       isMyAudio: false,
                                            //       isMyVideo: widget.participant
                                            //               ?.videoStatus ??
                                            //           false,
                                            //     );

                                            // showTopSnackBar(
                                            //   context,
                                            //   CustomSnackBar.info(
                                            //     message:
                                            //         'Данный функционал находится в разработкe',
                                            //     maxLines: 3,
                                            //     button: GestureDetector(
                                            //       child: const Icon(
                                            //         Icons.close,
                                            //         color: Colors.white,
                                            //       ),
                                            //       onTap: () =>
                                            //           localAnimationController
                                            //               .reverse(),
                                            //     ),
                                            //   ),
                                            //   displayDuration: const Duration(
                                            //       milliseconds: 700),
                                            //   //persistent: true,
                                            //   onAnimationControllerInit:
                                            //       (controller) =>
                                            //           localAnimationController =
                                            //               controller,
                                            // );
                                          }),
                                          itemMenu(
                                              'Запретить транслировать видео',
                                              () {
                                            showTopSnackBar(
                                              context,
                                              CustomSnackBar.info(
                                                message:
                                                    'Данный функционал находится в разработкe',
                                                maxLines: 3,
                                                button: GestureDetector(
                                                  child: const Icon(
                                                    Icons.close,
                                                    color: Colors.white,
                                                  ),
                                                  onTap: () =>
                                                      localAnimationController
                                                          .reverse(),
                                                ),
                                              ),
                                              displayDuration: const Duration(
                                                  milliseconds: 700),
                                              //persistent: true,
                                              onAnimationControllerInit:
                                                  (controller) =>
                                                      localAnimationController =
                                                          controller,
                                            );
                                          }),
                                        ]),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 2,
                        width: 2,
                        color: ColorApp.borderCards,
                      ),
                    ),
                  ],
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
