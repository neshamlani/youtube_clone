import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_clone/models/video.dart';
import 'package:youtube_clone/services/api_services.dart';

class VideoProvider extends ChangeNotifier {
  List<Video> videoList = [];
  List<Video> shortList = [];

  void getVideos() async {
    Map<String, dynamic> videoData = await ApiServices.getVideos("/videos");
    var list = videoData["data"];
    List<Video> videoRecord = [];
    list.forEach((listData) {
      videoRecord.add(Video.fromJson(listData));
    });
    videoList = videoRecord;
    print("Video => $list , video list $videoRecord");
    notifyListeners();
  }

  void getShorts() async {
    Map<String, dynamic> videoData = await ApiServices.getVideos("/shorts");
    var list = videoData["data"];
    List<Video> videoRecord = [];
    list.forEach((listData) {
      videoRecord.add(Video.fromJson(listData));
    });
    shortList = videoRecord;
    print("Video => $list , video list $videoRecord");
    notifyListeners();
  }
}
