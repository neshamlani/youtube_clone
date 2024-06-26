import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_clone/utils/helpers.dart';
import 'package:youtube_clone/models/video.dart';
import 'package:youtube_clone/utils/constants.dart';

class VideoCard extends StatefulWidget {
  Video videoDetails;

  VideoCard({
    super.key,
    required this.videoDetails,
  });

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            height: 210,
            child: Stack(
              children: [
                Image.network(
                  "${Constants.baseUrl}${widget.videoDetails.thumbnail}",
                  width: MediaQuery.of(context).size.width,
                  height: 210,
                  fit: BoxFit.cover,
                ),
                // Positioned(
                //   child: Container(
                //     padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                //     decoration: BoxDecoration(
                //       color: Colors.black54,
                //       borderRadius: BorderRadius.all(Radius.circular(5)),
                //     ),
                //     child: Text(formatDuration(_controller.value.duration)),
                //   ),
                //   bottom: 10,
                //   right: 10,
                // )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.person,
                  size: 28,
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.videoDetails.videoTitle,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4),
                      Text(
                        "${widget.videoDetails.channelName} - 7 days ago",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
