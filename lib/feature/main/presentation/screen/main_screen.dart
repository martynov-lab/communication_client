import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import '../../../auth/domain/entities/user_entity/user_entity.dart';
import '../../../auth/presentation/screen/user_screen.dart';
import '../../data/signaling_service.dart';

class MainScreen extends StatefulWidget {
  final UserEntity userEntity;
  const MainScreen({super.key, required this.userEntity});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Signaling signaling = Signaling();
  final RTCVideoRenderer _localRenderer = RTCVideoRenderer();
  final RTCVideoRenderer _remoteRenderer = RTCVideoRenderer();
  String? roomId;
  TextEditingController textEditingController = TextEditingController(text: '');
  @override
  void initState() {
    _localRenderer.initialize();
    _remoteRenderer.initialize();

    signaling.onAddRemoteStream = ((stream) {
      _remoteRenderer.srcObject = stream;
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    _localRenderer.dispose();
    _remoteRenderer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_box,
              color: Colors.grey,
            ),
            onPressed: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const UserScreen())));
            }),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  signaling.openUserMedia(_localRenderer, _remoteRenderer);
                },
                child: Text("Open camera & microphone"),
              ),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                onPressed: () async {
                  roomId = await signaling.createRoom(_remoteRenderer);
                  textEditingController.text = roomId!;
                  setState(() {});
                },
                child: Text("Create room"),
              ),
              // SizedBox(
              //   width: 5,
              // ),
              // ElevatedButton(
              //   onPressed: () {
              //     // Add roomId
              //     signaling.joinRoom(
              //       textEditingController.text,
              //       _remoteRenderer,
              //     );
              //   },
              //   child: Text("Join room"),
              // ),
              // SizedBox(
              //   width: 5,
              // ),
              // ElevatedButton(
              //   onPressed: () {
              //     signaling.hangUp(_localRenderer);
              //   },
              //   child: Text("Hangup"),
              // )
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ElevatedButton(
              //   onPressed: () {
              //     signaling.openUserMedia(_localRenderer, _remoteRenderer);
              //   },
              //   child: Text("Open camera & microphone"),
              // ),
              // SizedBox(
              //   width: 5,
              // ),
              // ElevatedButton(
              //   onPressed: () async {
              //     roomId = await signaling.createRoom(_remoteRenderer);
              //     textEditingController.text = roomId!;
              //     setState(() {});
              //   },
              //   child: Text("Create room"),
              // ),
              // SizedBox(
              //   width: 5,
              // ),
              ElevatedButton(
                onPressed: () {
                  // Add roomId
                  signaling.joinRoom(
                    textEditingController.text,
                    _remoteRenderer,
                  );
                },
                child: Text("Join room"),
              ),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  signaling.hangUp(_localRenderer);
                },
                child: Text("Hangup"),
              )
            ],
          ),
          SizedBox(height: 8),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: RTCVideoView(_localRenderer, mirror: true)),
                  Expanded(child: RTCVideoView(_remoteRenderer)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Join the following Room: "),
                Flexible(
                  child: TextFormField(
                    controller: textEditingController,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8)
        ],
      ),
    );
  }
}
