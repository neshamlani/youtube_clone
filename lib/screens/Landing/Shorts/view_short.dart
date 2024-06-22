import 'package:flutter/material.dart';
import 'package:youtube_clone/widgets/custom_shorts_player.dart';
import 'package:youtube_clone/utils/constants.dart';

class ViewShort extends StatelessWidget {
  const ViewShort({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          CustomShortsPlayer(
            channelName: "Test",
            videoTitle: "Test",
            videoUrl: Constants.portraitVideo,
          )
        ],
      ),
    );
  }
}
