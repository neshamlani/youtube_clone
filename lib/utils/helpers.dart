String formatDuration(Duration duration) {
  return "${duration.inHours}:${duration.inMinutes.remainder(60)}:${(duration.inSeconds.remainder(60))}";
}
