import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:youtube_clone/utils/constants.dart';

class CustomVideoPlayer extends StatefulWidget {
  String videoUrl;
  CustomVideoPlayer({
    super.key,
    required this.videoUrl,
  });

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      autoPlay: false,
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse("${Constants.baseUrl}${widget.videoUrl}"),
      ),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlickVideoPlayer(
      flickManager: flickManager,
      flickVideoWithControls: FlickVideoWithControls(
        videoFit: BoxFit.contain,
        closedCaptionTextStyle: TextStyle(fontSize: 8),
        controls: FlickPortraitControls(),
      ),
      flickVideoWithControlsFullscreen: FlickVideoWithControls(
        controls: FlickLandscapeControls(),
      ),
    );
  }
}
