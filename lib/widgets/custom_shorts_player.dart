import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:youtube_clone/utils/constants.dart';

class CustomShortsPlayer extends StatefulWidget {
  String videoUrl;
  String videoTitle;
  String channelName;
  CustomShortsPlayer({
    super.key,
    required this.channelName,
    required this.videoTitle,
    required this.videoUrl,
  });

  @override
  State<CustomShortsPlayer> createState() => _CustomShortsPlayerState();
}

class _CustomShortsPlayerState extends State<CustomShortsPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse("${Constants.baseUrl}${widget.videoUrl}"),
    );
    _controller.initialize().then((_) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? VisibilityDetector(
            key: ObjectKey(_controller),
            child: VideoPlayer(_controller),
            onVisibilityChanged: (visibility) {
              if (visibility.visibleFraction == 0) {
                _controller.pause();
                _controller.setLooping(true);
              }
              if (visibility.visibleFraction == 1) {
                _controller.play();
                _controller.setLooping(true);
              }
            },
          )
        : Center(
            child: CircularProgressIndicator(),
          );
  }
}
