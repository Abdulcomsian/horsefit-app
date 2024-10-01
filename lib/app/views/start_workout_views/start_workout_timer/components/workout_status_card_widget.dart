import '../../../../../core/constants/exports.dart';

class WorkoutStatusCardWidget extends StatelessWidget {
  const WorkoutStatusCardWidget({
    super.key,
    required String icon,
    required String title,
    required String subTitle,
    required String trailing,
    required Color color,
  })  : _icon = icon,
        _title = title,
        _subTitle = subTitle,
        _trailing = trailing,
        _color = color;

  final String _icon, _title, _subTitle, _trailing;
  final Color _color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            padding: EdgeInsets.only(top: 12.pv, right: 18.ph),
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 72.ph, vertical: 56.pv),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.grayColor),
                borderRadius: BorderRadius.circular(74.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextViewWidget(
                    _title,
                    style: textTheme.headlineSmall
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 52.h),
                  TextViewWidget(
                    _subTitle,
                    style: textTheme.displayLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: _color,
                      fontSize: 188.sp,
                    ),
                  ),
                  SizedBox(height: 52.h),
                  TextViewWidget(
                    _trailing,
                    style: textTheme.headlineSmall
                        ?.copyWith(fontWeight: FontWeight.w700, color: _color),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 28.ph, vertical: 28.pv),
            decoration: const BoxDecoration(
              color: AppColors.whiteColor,
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 36.ph, vertical: 36.pv),
              decoration: BoxDecoration(color: _color, shape: BoxShape.circle),
              child: SvgPictureAssetWidget(_icon,
                  size: 88.w, isApplyColorFilter: true),
            ),
          )
        ],
      ),
    );
  }
}
