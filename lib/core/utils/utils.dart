import 'package:timeago/timeago.dart' as timeago;

class Utils {
  /// This method will calculate time difference
  ///
  /// Format:
  /// if the difference is below 24 hours then the format look LIKE: 20 hours ago
  /// if the difference is above above 24 hours then the format look LIKE: a day ago
  /// if the difference is above above 48 hours then the format look LIKE: 2 days ago
  /// if the difference is above above one month then the format look LIKE: about a month ago
  /// if the difference is above above two months then the format look LIKE: 2 months ago
  /// if the difference is above above one year then the format look LIKE: about a year ago
  /// if the difference is above above two years then the format look LIKE: 2 years ago

  String formatTimeDifference(String dateString) {
    final givenDate = DateTime.parse(dateString);
    final difference = DateTime.now().difference(givenDate);
    final formatedDate = timeago.format(DateTime.now().subtract(difference));
    return formatedDate;
  }
}
