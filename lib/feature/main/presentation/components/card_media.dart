import 'package:communication_client/app/presentation/components/app_snackbar/top_snack_bar.dart';
import 'package:communication_client/app/presentation/components/custom_icons.dart';
import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:communication_client/app/utils/mixins/overvlay_menu.dart';
import 'package:flutter/material.dart';

class CardMedia extends StatefulWidget {
  final Widget child;
  // final String? nameLabel;
  // final ParticipantEntity? participant;
  final String adminFeedId;
  final String roomId;
  const CardMedia({
    Key? key,
    required this.child,
    // required this.nameLabel,
    // required this.participant,
    required this.adminFeedId,
    required this.roomId,
  }) : super(key: key);

  @override
  State<CardMedia> createState() => _CardMediaState();
}

class _CardMediaState extends State<CardMedia> with OverlayStateMixin {
  final LayerLink _layerLink = LayerLink();
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
    return
        // Container(
        //   padding: const EdgeInsets.only(
        //   left: 20,
        //   right: 20,
        //   bottom: 20,
        // ),
        // child:
        CompositedTransformTarget(
      link: _layerLink,
      child: Container(
        decoration: BoxDecoration(
          color: ColorApp.backgroundCards,
          border: Border.all(
            color: ColorApp.borderCards,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            widget.child,
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                height: 25,
                // width: 50,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),

                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(
                        CustomIcon.verifiedBadge,
                        color: Colors.blue,
                        size: 10,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        "widget.participant?.display",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: Font.inter,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 25,
                // width: 50,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  ),
                ),

                child: GestureDetector(
                    child: const Padding(
                      padding: EdgeInsets.only(top: 3, left: 5, right: 5),
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 20,
                      ),
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
                            offset: Offset(size.width - 210, size.height - 2),
                            child: Material(
                              color: ColorApp.backgroundBottomSheet,
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    "widget.participant?.userRole" !=
                                            'Organizator'
                                        ? itemMenu('Удалить из комнаты', () {
                                            // context
                                            //     .read<VideoConferenceCubit>()
                                            //     .kickParticipant(
                                            //       hash: widget.hash,
                                            //       feedIdParticipant: widget
                                            //               .participant?.feedId
                                            //               .toString() ??
                                            //           '',
                                            //     );
                                          })
                                        : const SizedBox(),
                                    itemMenu('Выключить микрафон', () {
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
                                        displayDuration:
                                            const Duration(milliseconds: 700),
                                        //persistent: true,
                                        onAnimationControllerInit:
                                            (controller) =>
                                                localAnimationController =
                                                    controller,
                                      );
                                    }),
                                    itemMenu('Запретить транслировать видео',
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
                                        displayDuration:
                                            const Duration(milliseconds: 700),
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
                    }),
              ),
            )
          ],
        ),
        // ),
      ),
    );
  }
}
