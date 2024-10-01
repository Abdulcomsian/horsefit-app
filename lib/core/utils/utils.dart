import 'package:timeago/timeago.dart' as timeago;

import '../constants/exports.dart';

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

  Future<(String, List<String>)> pickMedia(BuildContext context,
      Permission permission, ImageSource source, String permissionType,
      {bool isPickMulti = false, bool isPickVideo = false}) async {
    String pickedFile = '';
    List<String> pickedFiles = [];

    await PermissionUtils.checkPermission(permission: permission)
        .then((status) async {
      if (status.isGranted) {
        if (!isPickVideo) {
          if (!isPickMulti) {
            final file = await locator<ImagePicker>().pickImage(source: source);
            if (file != null) pickedFile = file.path;
          } else {
            final files =
                await locator<ImagePicker>().pickMultiImage(imageQuality: 20);
            for (final file in files) {
              pickedFiles.add(file.path);
            }
          }
        } else {
          final file = await locator<ImagePicker>().pickVideo(source: source);
          if (file != null) pickedFile = file.path;
        }
      } else if (status == PermissionStatus.permanentlyDenied ||
          status == PermissionStatus.limited) {
        locator<DialogueUtils>()
            .openAppSetting(context, permission: permissionType);
      }
    });
    return (pickedFile, pickedFiles);
  }
}
