import 'package:permission_handler/permission_handler.dart';

class PermissionUtils {
  static Future<PermissionStatus> checkPermission(
      {required Permission permission}) async {
    PermissionStatus status = await permission.status;
    if (!status.isDenied) {
      return status;
    } else {
      PermissionStatus permissionStatus = await permission.request();
      return permissionStatus;
    }
  }
}
