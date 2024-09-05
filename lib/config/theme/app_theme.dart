import '../../core/constants/exports.dart';

class AppTheme {
  static ThemeData ligthThemeData = ThemeData(
    useMaterial3: false,
    fontFamily: ConstantsResource.fontFamily,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.whiteColor,
    primaryColor: AppColors.primaryColor,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
      selectionColor: AppColors.primaryColor.withOpacity(0.4),
      selectionHandleColor: AppColors.primaryColor,
    ),
    textTheme: textTheme,
  );
}
