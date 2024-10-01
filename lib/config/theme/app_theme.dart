import '../../core/constants/exports.dart';

class AppTheme {
  static ThemeData lightThemeData = ThemeData(
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
    datePickerTheme: DatePickerThemeData(
      backgroundColor: AppColors.whiteColor,
      headerBackgroundColor: AppColors.secondaryColor,
      headerForegroundColor: AppColors.whiteColor,
      headerHeadlineStyle: textTheme.headlineLarge,
      headerHelpStyle: textTheme.headlineLarge,
      weekdayStyle: textTheme.headlineLarge,
      dayStyle: textTheme.headlineLarge,
      dayOverlayColor:
          WidgetStateProperty.resolveWith((_) => AppColors.primaryColor),
      todayForegroundColor:
          WidgetStateProperty.resolveWith((_) => AppColors.secondaryColor),
      yearStyle: textTheme.headlineLarge,
      yearForegroundColor:
          WidgetStateProperty.resolveWith((_) => AppColors.primaryColor),
      yearOverlayColor:
          WidgetStateProperty.resolveWith((_) => AppColors.primaryColor),
      dividerColor: AppColors.primaryColor,
      cancelButtonStyle: ButtonStyle(
          foregroundColor:
              WidgetStateProperty.resolveWith((_) => AppColors.primaryColor)),
      confirmButtonStyle: ButtonStyle(
          foregroundColor:
              WidgetStateProperty.resolveWith((_) => AppColors.primaryColor)),
    ),
  );
}
