import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:youtube_clone/widgets/custom_shorts_player.dart';
import 'package:youtube_clone/utils/constants.dart';
import 'package:youtube_clone/models/video.dart';

class ViewShort extends StatelessWidget {
  Video shortsVideo;

  ViewShort({
    super.key,
    required this.shortsVideo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          CustomShortsPlayer(
            channelName: shortsVideo.channelName,
            videoTitle: shortsVideo.videoTitle,
            videoUrl: shortsVideo.videoUrl,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black,
                    Colors.black87,
                    Colors.black54,
                    Colors.transparent,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person,
                                  size: 32,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  shortsVideo.channelName,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              shortsVideo.videoTitle,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              shortsVideo.isLiked
                                  ? "assets/icons/like_filled.png"
                                  : "assets/icons/like_outlined.png",
                              width: 30,
                              height: 30,
                            ),
                          ),
                          Text(
                            "${shortsVideo.likeCount}",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 10),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              shortsVideo.isDisliked
                                  ? "assets/icons/dislike_filled.png"
                                  : "assets/icons/dislike_outlined.png",
                              width: 30,
                              height: 30,
                            ),
                          ),
                          Text(
                            "${shortsVideo.dislikedCount}",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 10),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/icons/share_filled.png",
                              width: 30,
                              height: 30,
                            ),
                          ),
                          Text(
                            "Share",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
