extension StringsExt on String {
  String toCapitalize() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }

  String toCapitalizeEveryWord() {
    if (isEmpty) return this;
    return split(" ").map((word) {
      if (word.isNotEmpty) {
        return word[0].toUpperCase() + word.substring(1);
      }
      return word;
    }).join(" ");
  }

  String get splitLast => split('.').last;

  String get splitLastSlash => split('/').last;

  /// All RegExp
  bool get isValidName => RegExp(r'[a-zA-Z].{2,}').hasMatch(this);

  bool get isValidEmail => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(this);

  bool get isValidPassword =>
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
          .hasMatch(this);
}
