import 'package:communication_client/app/presentation/components/app_button.dart';
import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:communication_client/feature/main/domain/state/video_room_bloc/video_room_bloc.dart';
import 'package:communication_client/feature/main/presentation/components/card_media.dart';
import 'package:communication_client/feature/main/presentation/components/render_media.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

class GridWithVideo extends StatelessWidget {
  final String roomId;
  final RTCVideoRenderer localRenderer;

  const GridWithVideo({
    Key? key,
    required this.roomId,
    required this.localRenderer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> actions = [
      AppButton(
        text: 'Завершить для всех',
        onPressed: () {
          // context.read<VideoConferenceCubit>().callEnd();
          // context.read<VideoRoomCubit>().deleteRoom(hash: hash);
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
    List<QuiltedGridTile> _pattern = [const QuiltedGridTile(2, 2)];

    return SliverGrid(
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 2,
        //childAspectRatio: columnCount == 1 ? 2 : 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        pattern: _pattern,
        repeatPattern: QuiltedGridRepeatPattern.same,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          print('LocalRenderer!!!!!!!!!!!!!!: ${localRenderer.renderVideo}');
          return CardMedia(
            adminFeedId: "myFeedId",
            roomId: roomId,
            child: RenderMedia(
              quality: FilterQuality.medium,
              videoRenderer: localRenderer,
            ),
          );
        },
        childCount: 1,
      ),
    );
  }

  Widget notShowVideo(String name) {
    return Center(
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: ColorApp.backgroundAvatar,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(name.substring(0, 1),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: Font.inter,
              )),
        ),
      ),
    );
  }
}