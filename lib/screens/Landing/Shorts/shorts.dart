import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_clone/models/video.dart';
import 'package:youtube_clone/providers/video_provider.dart';
import 'view_short.dart';

class Shorts extends StatefulWidget {
  const Shorts({super.key});

  @override
  State<Shorts> createState() => _ShortsState();
}

class _ShortsState extends State<Shorts> {
  PageController _controller = new PageController();

  @override
  void initState() {
    super.initState();
    Provider.of<VideoProvider>(context, listen: false).getShorts();
  }

  @override
  Widget build(BuildContext context) {
    List<Video> shortList =
        Provider.of<VideoProvider>(context, listen: true).shortList;

    return PageView(
      controller: _controller,
      allowImplicitScrolling: true,
      scrollDirection: Axis.vertical,
      children: shortList.length == 0
          ? [
              Center(
                child: CircularProgressIndicator(),
              )
            ]
          : [
              ...shortList
                  .map((shortsVideo) => ViewShort(shortsVideo: shortsVideo))
            ],
    );
  }
}
