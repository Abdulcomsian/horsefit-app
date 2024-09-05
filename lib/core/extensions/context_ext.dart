import '../constants/exports.dart';

extension ContextExt on BuildContext {
  void unfocusKeyboard() {
    if (_isKeyboardVisible()) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  bool _isKeyboardVisible() => FocusScope.of(this).hasFocus;
}
