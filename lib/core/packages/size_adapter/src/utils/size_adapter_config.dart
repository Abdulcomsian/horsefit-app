import '../../../../constants/exports.dart';

class SizeAdapterConfig {
  SizeAdapterConfig._();

  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double topPadding;
  static late double bottomPadding;
  static late double appBarHeight;
  static late double designWidth;
  static late double designHeight;
  static Orientation? orientation;

  static void init({required BuildContext context, required Size designSize}) {
    double safeScreenWidth = calculateSafeScreenWidth(context);
    double safeScreenHeight = calculateSafeScreenHeight(context);
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = safeScreenWidth;
    screenHeight = safeScreenHeight;
    designWidth = designSize.width;
    designHeight = designSize.height;
    orientation = _mediaQueryData.orientation;
  }
}

/// Calculates the safe screen width by considering the device's screen width
/// while accounting for factors such as the left & right padding.
///
/// This method helps in obtaining a reliable screen width that excludes any
/// unwanted spaces and ensuring accurate dimensions for UI elements.
///
/// ## Parameters
/// - `context`: The `BuildContext` to access the current widget's context.
///
/// ## Returns
/// A `double` value representing the safe screen width after considering
/// factors like the status bar, system overlays, and padding.
///
/// ## Usage Example
/// ```dart
/// double safeScreenWidth = calculateSafeScreenWidth(context);
/// print('Safe Screen Width: $safeWidth');
/// ```
double calculateSafeScreenWidth(BuildContext context) {
  MediaQueryData mediaQueryData = MediaQuery.of(context);
  double screenWidth = mediaQueryData.size.width;
  double safeAreaWidth =
      mediaQueryData.padding.left + mediaQueryData.padding.right;
  double safeScreenWidth = (screenWidth - safeAreaWidth);

  ///!logger.i('Safe Screen Width: $safeScreenWidth');
  return safeScreenWidth;
}

/// Calculates the safe screen height by considering the device's screen height
/// while accounting for factors such as the status bar, system overlays, and padding.
///
/// This method helps in obtaining a reliable screen height that excludes any
/// unwanted spaces like status bars and system overlays, ensuring accurate
/// dimensions for UI elements.
///
/// ## Parameters
/// - `context`: The `BuildContext` to access the current widget's context.
///
/// ## Returns
/// A `double` value representing the safe screen width after considering
/// factors like the status bar, system overlays, and padding.
///
/// ## Usage Example
/// ```dart
/// double safeScreenHeight = calculateSafeScreenHeight(context);
/// print('Safe Screen Height: $safeHeight');
/// ```
double calculateSafeScreenHeight(BuildContext context) {
  MediaQueryData mediaQueryData = MediaQuery.of(context);
  double screenHeight = mediaQueryData.size.height;
  double safeAreaHeight =
      mediaQueryData.padding.top + mediaQueryData.padding.bottom;
  double safeScreenHeight = (screenHeight - safeAreaHeight);

  ///!logger.i('Safe Screen Height: $safeScreenHeight');
  return safeScreenHeight;
}

// Get the proportionate height as per screen size
/// --
/// screenHeight is the height of the screen the app is run on
/// desginHeight is the design screen height

double height(double inputHeight) {
  double screenHeight = SizeAdapterConfig.screenHeight;
  double desginHeight = SizeAdapterConfig.designHeight;
  final calculatedHeight = (inputHeight / desginHeight) * screenHeight;
  final height = (calculatedHeight <= 1)
      ? (inputHeight <= 1 ? 1.0 : inputHeight)
      : calculatedHeight;

  ///!logger.i('Input Height: $inputHeight Calculated Height: $calculatedHeight Height: $height');
  return height;
}

// Get the proportionate width as per screen size
/// --
/// screenWidth is the width of the screen the app is run on
/// desginWidth is the design screen width

double width(double inputWidth) {
  double screenWidth = SizeAdapterConfig.screenWidth;
  double desginWidth = SizeAdapterConfig.designWidth;
  final calculatedWidth = (inputWidth / desginWidth) * screenWidth;
  final width = (calculatedWidth <= 1)
      ? (inputWidth <= 1 ? 1.0 : inputWidth)
      : calculatedWidth;

  ///!logger.i('Input Width: $inputWidth Calculated Width: $calculatedWidth Width: $width');
  return width;
}

// Calculate border radius proportionate to screen width
/// --
/// screenWidth is the width of the screen the app is run on
/// desginWidth is the design screen width

double radius(double inputRadius) {
  double screenWidth = SizeAdapterConfig.screenWidth;
  double desginWidth = SizeAdapterConfig.designWidth;
  final calculatedRadius = (inputRadius / desginWidth) * screenWidth;
  final radius = (calculatedRadius <= 1)
      ? (inputRadius <= 1 ? 1.0 : inputRadius)
      : calculatedRadius;

  ///!logger.i('Input Radius: $inputRadius Calculated Radius: $calculatedRadius Radius: $radius');
  return radius;
}

// Calculate padding proportionate to screen width
/// --
/// screenWidth is the width of the screen the app is run on
/// desginWidth is the design screen width

double paddingHorizontal(double inputPadding) {
  double screenWidth = SizeAdapterConfig.screenWidth;
  double desginWidth = SizeAdapterConfig.designWidth;
  final calculatedPadding = (inputPadding / desginWidth) * screenWidth;
  final padding = (calculatedPadding <= 1)
      ? (inputPadding <= 1 ? 1.0 : inputPadding)
      : calculatedPadding;

  ///!logger.i('Input Padding: $inputPadding Calculated Padding: $calculatedPadding Padding Horizontal: $padding');
  return padding;
}
// Calculate padding proportionate to screen height
/// --
/// screenHeight is the height of the screen the app is run on
/// desginHeight is the design screen height

double paddingvertical(double inputPadding) {
  double screenHeight = SizeAdapterConfig.screenHeight;
  double designHeight = SizeAdapterConfig.designHeight;
  final calculatedPadding = (inputPadding / designHeight) * screenHeight;
  final padding = (calculatedPadding <= 1)
      ? (inputPadding <= 1 ? 1.0 : inputPadding)
      : calculatedPadding;

  ///!logger.i('Input Padding: $inputPadding Calculated Padding: $calculatedPadding Padding Vertical: $padding');
  return padding;
}

/// A method that returns the adaptive text size according to different screen sizes
/// --
/// desginHeight is the design screen height

double adaptiveTextSize(double value) {
  double desginHeight = SizeAdapterConfig.designHeight;
  final textSize = (value / desginHeight) * SizeAdapterConfig.screenHeight;

  ///!logger.i('Input Text Size: $value Text Size: $textSize');
  return textSize <= 1 ? value : textSize;
}
