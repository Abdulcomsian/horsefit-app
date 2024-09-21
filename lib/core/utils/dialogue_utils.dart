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
}
