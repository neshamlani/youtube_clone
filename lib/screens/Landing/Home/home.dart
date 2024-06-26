import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_clone/providers/video_provider.dart';
import 'home_app_bar.dart';
import 'package:youtube_clone/utils/constants.dart';
import 'package:youtube_clone/widgets/video_card.dart';
import 'package:youtube_clone/widgets/shorts_card.dart';
import 'package:youtube_clone/models/video.dart';
import 'package:youtube_clone/services/api_services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<void> handleRefresh() async {
    print("Pulled to refersh");
  }

  @override
  void initState() {
    super.initState();
    Provider.of<VideoProvider>(context, listen: false).getVideos();
  }

  @override
  Widget build(BuildContext context) {
    List<Video> videoList =
        Provider.of<VideoProvider>(context, listen: true).videoList;
    List<Video> shortList =
        Provider.of<VideoProvider>(context, listen: true).shortList;

    return Container(
      child: Stack(
        children: [
          Positioned(
            child: HomeAppBar(),
          ),
          RefreshIndicator(
            onRefresh: handleRefresh,
            backgroundColor: Colors.black,
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.only(top: 50),
              child: SingleChildScrollView(
                child: Column(
                  children: videoList.length == 0
                      ? [
                          Center(
                            child: CircularProgressIndicator(),
                          ),
                        ]
                      : [
                          ...videoList.map((videoDetails) =>
                              VideoCard(videoDetails: videoDetails)),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: shortList
                                  .map(
                                    (short) => ShortsCard(
                                        thumbnail: short.thumbnail,
                                        videoTitle: short.videoTitle),
                                  )
                                  .toList(),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
