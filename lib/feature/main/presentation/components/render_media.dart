import 'package:communication_client/feature/main/domain/state/video_room_bloc/video_room_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

//import 'dart:math' as math;

class RenderMedia extends StatelessWidget {
  final FilterQuality quality;
  final RTCVideoRenderer videoRenderer;
  final double borderRadius;

  const RenderMedia({
    Key? key,
    required this.quality,
    required this.videoRenderer,
    this.borderRadius = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoRoomBloc, VideoRoomState>(
      builder: (context, state) {
        return Transform.scale(
          scaleX: -1, //-1 перевернуть

          child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: RTCVideoView(
              videoRenderer,
              filterQuality: quality,
              objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
              mirror: true,
            ),
          ),
        );
      },
    );
  }
}
