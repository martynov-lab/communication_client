import 'package:communication_client/app/presentation/components/app_dialog.dart';
import 'package:communication_client/app/presentation/components/app_image_widget.dart';
import 'package:communication_client/app/presentation/components/custom_icons.dart';
import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:communication_client/app/utils/platform/adaptive_widget.dart';
import 'package:communication_client/feature/main/presentation/screen/footter.dart';
import 'package:communication_client/feature/main/presentation/screen/home_screen_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../auth/domain/entities/user_entity/user_entity.dart';

// class MainScreen extends StatefulWidget {
//   // final UserEntity userEntity;
//   const MainScreen({
//     super.key,
//     // required this.userEntity,
//   });

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   Signaling signaling = Signaling();
//   final RTCVideoRenderer _localRenderer = RTCVideoRenderer();
//   final RTCVideoRenderer _remoteRenderer = RTCVideoRenderer();
//   String? roomId;
//   TextEditingController textEditingController = TextEditingController(text: '');
//   @override
//   void initState() {
//     _localRenderer.initialize();
//     _remoteRenderer.initialize();

//     signaling.onAddRemoteStream = ((stream) {
//       _remoteRenderer.srcObject = stream;
//       setState(() {});
//     });

//     super.initState();
//   }

//   @override
//   void dispose() {
//     _localRenderer.dispose();
//     _remoteRenderer.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         systemOverlayStyle: const SystemUiOverlayStyle(
//           statusBarColor: Colors.white,
//           statusBarIconBrightness: Brightness.dark,
//           statusBarBrightness: Brightness.dark,
//         ),
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//         actions: [
//           IconButton(
//             icon: const Icon(
//               Icons.account_box,
//               color: Colors.grey,
//             ),
//             onPressed: (() {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: ((context) => const UserScreen())));
//             }),
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           SizedBox(height: 8),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   signaling.openUserMedia(_localRenderer, _remoteRenderer);
//                 },
//                 child: Text("Open camera & microphone"),
//               ),
//               SizedBox(
//                 width: 5,
//               ),
//               ElevatedButton(
//                 onPressed: () async {
//                   roomId = await signaling.createRoom(_remoteRenderer);
//                   textEditingController.text = roomId!;
//                   setState(() {});
//                 },
//                 child: Text("Create room"),
//               ),
//               // SizedBox(
//               //   width: 5,
//               // ),
//               // ElevatedButton(
//               //   onPressed: () {
//               //     // Add roomId
//               //     signaling.joinRoom(
//               //       textEditingController.text,
//               //       _remoteRenderer,
//               //     );
//               //   },
//               //   child: Text("Join room"),
//               // ),
//               // SizedBox(
//               //   width: 5,
//               // ),
//               // ElevatedButton(
//               //   onPressed: () {
//               //     signaling.hangUp(_localRenderer);
//               //   },
//               //   child: Text("Hangup"),
//               // )
//             ],
//           ),
//           SizedBox(height: 8),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // ElevatedButton(
//               //   onPressed: () {
//               //     signaling.openUserMedia(_localRenderer, _remoteRenderer);
//               //   },
//               //   child: Text("Open camera & microphone"),
//               // ),
//               // SizedBox(
//               //   width: 5,
//               // ),
//               // ElevatedButton(
//               //   onPressed: () async {
//               //     roomId = await signaling.createRoom(_remoteRenderer);
//               //     textEditingController.text = roomId!;
//               //     setState(() {});
//               //   },
//               //   child: Text("Create room"),
//               // ),
//               // SizedBox(
//               //   width: 5,
//               // ),
//               ElevatedButton(
//                 onPressed: () {
//                   // Add roomId
//                   signaling.joinRoom(
//                     textEditingController.text,
//                     _remoteRenderer,
//                   );
//                 },
//                 child: Text("Join room"),
//               ),
//               SizedBox(
//                 width: 5,
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   signaling.hangUp(_localRenderer);
//                 },
//                 child: Text("Hangup"),
//               )
//             ],
//           ),
//           SizedBox(height: 8),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Expanded(child: RTCVideoView(_localRenderer, mirror: true)),
//                   Expanded(child: RTCVideoView(_remoteRenderer)),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("Join the following Room: "),
//                 Flexible(
//                   child: TextFormField(
//                     controller: textEditingController,
//                   ),
//                 )
//               ],
//             ),
//           ),
//           SizedBox(height: 8)
//         ],
//       ),
//     );
//   }
// }

class MainScreen extends StatelessWidget {
  final UserEntity user;

  const MainScreen({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return

        // BlocListener<VideoRoomCubit, VideoRoomState>(
        //   listener: (context, state) {
        //     state.whenOrNull(
        //       succesCreatedRoom: (RoomEntity room, String hash,
        //           String nameParticipant, bool audioStatus, bool videoStatus) {
        //         Navigator.push(
        //             context, FadeRoute(page: VideoRoom(room: room, hash: hash)));
        //         context.read<VideoConferenceCubit>().joinRoom(
        //               room: room,
        //               userName: nameParticipant,
        //               isMyAudio: audioStatus,
        //               isMyVideo: videoStatus,
        //             );
        //       },
        //       deleteRoom: () {
        //         showSuccessSnackBar(context, 'Комната удалена');
        //         //context.read<VideoConferenceCubit>().callEnd();
        //         Navigator.of(context).popUntil(ModalRoute.withName('/'));
        //         //Navigator.of(context).pop();
        //       },
        //       errorCreatedRoom: (error) {
        //         showErrorSnackBar(
        //             context, ErrorEntity.fromException(error).message);
        //         //Navigator.of(context).pop();
        //       },
        //     );
        //   },
        // child:
        WillPopScope(
      onWillPop: () async {
        AppDialog.openDialog(
          context: context,
          titile: 'Вы действительно хотите выйти из приложения?',
          message:
              'Если "Да" тогда нажмите ОК. Если "Нет", тогда нажмите отмена.',
          textButtomCencel: 'Отмена',
          functionCencel: () {
            Navigator.of(context).pop();
          },
          textButtomOK: 'OK',
          functionOK: () {
            Navigator.of(context).popUntil(ModalRoute.withName('/'));

            // context.read<AuthCubit>().logout();
          },
        );

        return false;
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            // systemNavigationBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: (() {
              Navigator.of(context).popUntil(ModalRoute.withName('/'));
              //context.read<AuthCubit>().logout();
            }),
            child: const Icon(CustomIcon.logout),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                icon: user.avatarUrl != null || user.externalAvatarUrl != null
                    ? CircleAvatar(
                        radius: 15,
                        child: ClipOval(
                          child: AppImageWidget(
                            url: user.avatarUrl == null
                                ? user.externalAvatarUrl ?? ''
                                : '', //"${locator.get<AppConfig>().apiUrl}/${user.avatarUrl}",
                            height: 50,
                            width: 50,
                          ),
                        ),
                      )
                    : CircleAvatar(
                        radius: 15,
                        backgroundColor: ColorApp.blueButton,
                        child: Text(
                          user.userName != ''
                              ? user.userName.substring(0, 1).toUpperCase()
                              : 'G',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: Font.inter,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                onPressed: () {
                  // context.read<ImagePickerCubit>().getAllImages();
                  // Navigator.push(
                  //     context, FadeRoute(page: const ProfileScreen()));
                },
              ),
            ),
          ],
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 80, bottom: 5, left: 20, right: 20),
          child: AdaptiveWidget(
            wide: Column(
              children: [
                Expanded(
                  child: Expanded(
                    child: Row(
                      children: [
                        //const Expanded(child: MenuWidget()),
                        Expanded(
                            child: Image.asset(
                          ImageRasterPath.home,
                          fit: BoxFit.fitWidth,
                        )),
                      ],
                    ),
                  ),
                ),
                const Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Политика конфиденциальности'), //AppLocalizations.of(context)!.privacyPolicy
                    Row(
                      children: [
                        Icon(Icons.help_outline_rounded),
                        Text('Помощь') //AppLocalizations.of(context)!.help
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.copyright,
                        ),
                        Text('Martynov-studio')
                      ],
                    ),
                  ],
                ),
              ],
            ),
            narrow: const Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 80,
                    right: 70,
                    left: 70,
                  ),
                  child: Text(
                    'Добро пожаловать в Connect!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorApp.blueButton,
                      fontSize: 22,
                      fontFamily: Font.inter,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 60,
                      bottom: 15,
                      right: 40,
                      left: 40,
                    ),
                    child: HomeButtons(),
                  ),
                ),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
    // ,
    // );
  }
}
