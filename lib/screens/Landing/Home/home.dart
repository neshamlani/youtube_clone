import 'package:flutter/material.dart';
import 'home_app_bar.dart';
import 'package:youtube_clone/utils/constants.dart';
import 'package:youtube_clone/widgets/video_card.dart';
import 'package:youtube_clone/widgets/shorts_card.dart';

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
  Widget build(BuildContext context) {
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
                  children: [
                    VideoCard(
                      channelName: "Test",
                      videoTitle:
                          "Config 2022 Opening Keynote for IOS testing - Dylan Field",
                      videoUrl: Constants.sampleVideo,
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ShortsCard(
                              videoUrl: Constants.portraitVideo,
                              videoTitle:
                                  "Config 2022 Opening Keynote - Dylan Field",
                            ),
                            ShortsCard(
                              videoUrl: Constants.portraitVideo,
                              videoTitle:
                                  "Config 2022 Opening Keynote - Dylan Field",
                            ),
                            ShortsCard(
                              videoUrl: Constants.portraitVideo,
                              videoTitle:
                                  "Config 2022 Opening Keynote - Dylan Field",
                            ),
                            ShortsCard(
                              videoUrl: Constants.portraitVideo,
                              videoTitle:
                                  "Config 2022 Opening Keynote - Dylan Field",
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    VideoCard(
                      channelName: "Test",
                      videoTitle:
                          "Config 2022 Opening Keynote for IOS testing - Dylan Field",
                      videoUrl: Constants.sampleVideo,
                    ),
                    VideoCard(
                      channelName: "Test",
                      videoTitle:
                          "Config 2022 Opening Keynote for IOS testing - Dylan Field",
                      videoUrl: Constants.sampleVideo,
                    ),
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
