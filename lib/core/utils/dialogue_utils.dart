import '../constants/exports.dart';

class DialogueUtils {
  Future<bool> customDialog(
    BuildContext context, {
    required String title,
    String? doneBtnText,
    String? closeBtnText,
    Color? titleTextColor,
    Color? doneBtnColor,
    bool isShowButton = true,
    VoidCallback? onDone,
    VoidCallback? onClose,
  }) async {
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(92.r))),
          titlePadding: EdgeInsets.only(top: 162.pv, bottom: 62.pv),
          buttonPadding:
              EdgeInsets.only(left: 92.ph, right: 92.ph, bottom: 84.pv),
          title: TextViewWidget(
            title,
            align: TextAlign.center,
            style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w500,
                color: titleTextColor ?? AppColors.darkColor),
          ),
          // content: const Column(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [],
          // ),
          actions: [
            Row(
              children: [
                Flexible(
                  child: ButtonWidget(
                    btnText: closeBtnText ?? 'No',
                    isZeroWidth: true,
                    padding: EdgeInsets.symmetric(vertical: 62.pv),
                    onTap: onClose ?? () => context.pop(result: false),
                  ),
                ),
                Visibility(
                  visible: isShowButton,
                  child: Flexible(
                    child: ButtonWidget(
                      isZeroWidth: true,
                      margin: EdgeInsets.only(left: 52.ph),
                      padding: EdgeInsets.symmetric(vertical: 62.pv),
                      isShowBorder: true,
                      btnText: doneBtnText ?? 'Yes',
                      textColor: AppColors.darkColor,
                      onTap: onDone ?? () => context.pop(result: true),
                    ),
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
