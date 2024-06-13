extension DurationExtension on Duration {
  String getDuration() {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(inSeconds.remainder(60));
    String twoDigitHours = twoDigits(inHours.remainder(60));

    if (inHours == 0) {
      return "$twoDigitMinutes:$twoDigitSeconds";
    }
    return "$twoDigitHours:$twoDigitMinutes:$twoDigitSeconds";
  }
}
