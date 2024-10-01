import '../constants/exports.dart';

class NetworkHandler {
  static Future<void> executeWithNetworkCheck({
    required BuildContext context,
    required Future<void> Function() onlineAction,
  }) async {
    context.unFocusKeyboard();
    if (status.networkStatus == NetworkStatus.online) {
      await onlineAction();
    } else {
      ///! TODO Show no internet snackbar
    }
  }
}
