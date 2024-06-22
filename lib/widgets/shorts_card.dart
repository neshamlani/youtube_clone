import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ShortsCard extends StatefulWidget {
  String videoUrl;
  String videoTitle;
  ShortsCard({
    super.key,
    required this.videoUrl,
    required this.videoTitle,
  });

  @override
  State<ShortsCard> createState() => _ShortsCardState();
}

class _ShortsCardState extends State<ShortsCard> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
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
    return Container(
      width: 160,
      height: 270,
      margin: EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Stack(
          children: [
            _controller.value.isInitialized
                ? VideoPlayer(_controller)
                : CircularProgressIndicator(),
            Positioned(
              width: 160,
              child: Text(
                widget.videoTitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              bottom: 10,
              left: 5,
            ),
          ],
        ),
      ),
    );
  }
}
