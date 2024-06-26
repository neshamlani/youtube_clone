import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_clone/utils/constants.dart';

class ShortsCard extends StatefulWidget {
  String thumbnail;
  String videoTitle;
  ShortsCard({
    super.key,
    required this.thumbnail,
    required this.videoTitle,
  });

  @override
  State<ShortsCard> createState() => _ShortsCardState();
}

class _ShortsCardState extends State<ShortsCard> {
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
            Image.network(
              "${Constants.baseUrl}${widget.thumbnail}",
              width: 160,
              height: 270,
              fit: BoxFit.cover,
            ),
            Positioned(
              width: 160,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                child: Text(
                  widget.videoTitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
