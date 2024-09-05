import '../constants/exports.dart';

class ErrorHandler {
  Future<MainResponse> returnRunTimeTypeError(e) async {
    switch (e.runtimeType) {
      case const (DioException):
        return await _errorHandling(e);
      default:
        return MainResponse(code: 0, success: false, message: e.toString());
    }
  }

  Future<MainResponse> _errorHandling(DioException e) async {
    final errorResponse = e.response;
    final errorMsg = _getErrorMsg(errorResponse);
    logger.e(errorResponse);
    if (errorResponse?.statusCode == 401) await clearAppSession();
    if (errorResponse?.data != null) {
      final jsonResponse = MainResponse.fromJson(errorResponse?.data);
      return MainResponse(
        message: errorMsg,
        success: jsonResponse.success,
        code: errorResponse?.statusCode ?? 0,
      );
    } else {
      return MainResponse(
        code: errorResponse?.statusCode ?? 0,
        success: false,
        message: errorMsg,
      );
    }
  }

  String _getErrorMsg(Response<dynamic>? errorResponse) {
    final errorMsg =
        _extractErrorMsg(errorResponse) ?? errorResponse?.statusMessage;

    switch (errorMsg) {
      ///! TODO Modify cases and msgs
      case 'auth_invalid_credentials':
        return 'Auth invalid credentials';

      default:
        return errorMsg ?? 'Something went wrong! try again';
    }
  }

  String? _extractErrorMsg(Response<dynamic>? errorResponse) {
    String? errorMsg;
    final errorResponseData = errorResponse?.data['data'];
    final errorResponseMessage = errorResponse?.data['message'];

    if (errorResponseData != null && errorResponseData.isNotEmpty) {
      if (errorResponseData is Map<String, dynamic>) {
        final errorMessages = <String>[];
        for (var entry in errorResponseData.entries) {
          final key = entry.key;
          final value = entry.value.split(':').first;
          if (value is List) {
            final errorList = value.join(", ");
            errorMessages.add('${key}_$errorList');
          } else {
            errorMessages.add('${key}_$value');
          }
        }
        errorMsg = errorMessages.join("\n");
      }
    } else {
      errorMsg = errorResponseMessage;
    }
    return errorMsg;
  }

  Future<void> clearAppSession() async {
    await Future.wait([
      ///! TODO Clear local session
    ]);
    navigatorKey.currentState
        ?.pushNamedAndRemoveUntil(RouteNames.loginView, (route) => false);
  }
}
