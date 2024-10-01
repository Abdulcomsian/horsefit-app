import '../constants/exports.dart';

class DialogueUtils {
  Future<bool> customDialog(
    BuildContext context, {
    String? title,
    Widget? titleWidget,
    Widget? content,
    String? doneBtnText,
    String? closeBtnText,
    Color? titleTextColor,
    Color? closeBtnColor,
    Color? doneBtnColor,
    Color? doneBtnBorderColor,
    Color? backgroundColor,
    bool toggleButtonsOrder = false,
    VoidCallback? onDone,
    VoidCallback? onClose,
  }) async {
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: backgroundColor ?? AppColors.whiteColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(92.r))),
          titlePadding: EdgeInsets.only(
            top: 162.pv,
            bottom: 62.pv,
            left: 120.ph,
            right: 120.ph,
          ),
          buttonPadding:
              EdgeInsets.only(left: 92.ph, right: 92.ph, bottom: 84.pv),
          title: titleWidget ??
              TextViewWidget(
                title ?? '',
                align: TextAlign.center,
                style: textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: titleTextColor ?? AppColors.darkColor),
              ),
          content: content,
          actions: [
            Row(
              children: [
                if (!toggleButtonsOrder)
                  Flexible(
                    child: ButtonWidget(
                      btnText: closeBtnText ?? 'No',
                      color: closeBtnColor,
                      isZeroWidth: true,
                      padding: EdgeInsets.symmetric(vertical: 62.pv),
                      onTap: onClose ?? () => context.pop(result: false),
                    ),
                  ),
                if (!toggleButtonsOrder) SizedBox(width: 52.w),
                Flexible(
                  child: ButtonWidget(
                    isZeroWidth: true,
                    padding: EdgeInsets.symmetric(vertical: 62.pv),
                    isShowBorder: true,
                    btnText: doneBtnText ?? 'Yes',
                    color: doneBtnColor,
                    borderColor: doneBtnBorderColor,
                    textColor: AppColors.darkColor,
                    onTap: onDone ?? () => context.pop(result: true),
                  ),
                ),
                if (toggleButtonsOrder) SizedBox(width: 52.w),
                if (toggleButtonsOrder)
                  Flexible(
                    child: ButtonWidget(
                      btnText: closeBtnText ?? 'No',
                      color: closeBtnColor,
                      isZeroWidth: true,
                      padding: EdgeInsets.symmetric(vertical: 62.pv),
                      onTap: onClose ?? () => context.pop(result: false),
                    ),
                  ),
              ],
            ),
          ],
        );
      },
    );
    return result ?? false;
  }

  Future<void> openAppSetting(BuildContext context,
          {required String permission}) async =>
      await showDialog<bool>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.r))),
            title: TextViewWidget(
              permission,
              align: TextAlign.center,
              style: textTheme.headlineLarge,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextViewWidget(
                  '$permission permission is required.',
                  align: TextAlign.center,
                  style: textTheme.headlineMedium,
                ),
                SizedBox(height: 72.h),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: ButtonWidget(
                        btnText: 'Open app settings',
                        isZeroWidth: true,
                        color: Theme.of(context).primaryColor,
                        style: textTheme.labelLarge
                            ?.copyWith(color: AppColors.whiteColor),
                        onTap: () async {
                          try {
                            await openAppSettings().then((_) => context.pop());
                          } catch (e) {
                            logger.e(e.toString());
                          }
                        },
                      ),
                    ),
                    SizedBox(width: 32.w),
                    Expanded(
                      flex: 2,
                      child: ButtonWidget(
                        btnText: 'Close',
                        isZeroWidth: true,
                        isShowBorder: true,
                        borderColor: AppColors.grayColor,
                        style: textTheme.labelLarge
                            ?.copyWith(color: AppColors.darkColor),
                        onTap: () => context.pop(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      );

  Future<String?> openDatePicker(
    BuildContext context, {
    DateTime? initialDate,
    DateTime? firstDate,
    DateTime? lastDate,
  }) async {
    String? pickedDate;
    final picked = await showDatePicker(
        context: context,
        initialDate: initialDate ?? DateTime.now(),
        firstDate: firstDate ?? DateTime(2000),
        lastDate: lastDate ?? DateTime(2200),
        builder: (context, child) => Theme(
              data: Theme.of(context).copyWith(
                  colorScheme:
                      const ColorScheme.light(primary: AppColors.primaryColor)),
              child: child ?? const SizedBox.shrink(),
            ));
    if (picked != null) {
      pickedDate = picked.toString().substring(0, 10);
    }

    return pickedDate;
  }
}
