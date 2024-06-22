class Video {
  String videoUrl;
  String videoTitle;
  String? channelName;
  String uploadedAt;
  String? thumbnail;

  Video({
    required this.videoUrl,
    required this.videoTitle,
    this.channelName,
    required this.uploadedAt,
    this.thumbnail,
  });
}
