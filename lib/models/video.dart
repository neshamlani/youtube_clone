class Video {
  String videoUrl;
  String videoTitle;
  String channelName;
  String channelId;
  String uploadedAt;
  String thumbnail;
  bool isLiked = false;
  bool isDisliked = false;
  int likeCount = 0;
  int dislikedCount = 0;
  bool isShorts = false;

  Video({
    required this.videoUrl,
    required this.videoTitle,
    required this.channelName,
    required this.uploadedAt,
    required this.thumbnail,
    required this.dislikedCount,
    required this.isDisliked,
    required this.isLiked,
    required this.likeCount,
    required this.channelId,
    required this.isShorts,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'videoUrl': String videoUrl,
        'videoTitle': String videoTitle,
        'channelName': String channelName,
        'uploadedAt': String uploadedAt,
        'thumbnail': String thumbnail,
        'isLiked': bool isLiked,
        'isDisliked': bool isDisliked,
        'likeCount': int likeCount,
        'dislikedCount': int dislikedCount,
        'channelId': String channelId,
        'isShorts': bool isShorts,
      } =>
        Video(
          videoUrl: videoUrl,
          videoTitle: videoTitle,
          channelName: channelName,
          uploadedAt: uploadedAt,
          thumbnail: thumbnail,
          dislikedCount: dislikedCount,
          isDisliked: isDisliked,
          isLiked: isLiked,
          likeCount: likeCount,
          channelId: channelId,
          isShorts: isShorts,
        ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}
