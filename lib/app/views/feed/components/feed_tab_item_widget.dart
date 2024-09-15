import '../../../../core/constants/exports.dart';

class FeedTabItemWidget extends StatelessWidget {
  const FeedTabItemWidget({
    super.key,
    required String icon,
    required bool isSelected,
    required int count,
    String? secondIcon,
  })  : _icon = icon,
        _isSelected = isSelected,
        _secondIcon = secondIcon,
        _count = count;

  final String _icon;
  final String? _secondIcon;
  final bool _isSelected;
  final int _count;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: _secondIcon != null ? 110.ph : 162.ph,
              vertical: 60.pv),
          decoration: BoxDecoration(
            color: _isSelected ? AppColors.whiteColor : const Color(0xFF3C4266),
            borderRadius: BorderRadius.circular(100.r),
          ),
          child: Row(
            children: [
              SvgPictureAssetWidget(_icon, size: 92.w),
              if (_secondIcon != null) SizedBox(width: 12.w),
              if (_secondIcon != null)
                SvgPictureAssetWidget(_secondIcon, size: 92.w),
            ],
          ),
        ),
        if (_count > 0)
          Positioned(
              top: 36.h,
              right: 36.w,
              child: Badge.count(
                count: _count,
                backgroundColor: AppColors.primaryColor,
                textStyle:
                    textTheme.titleSmall?.copyWith(color: AppColors.whiteColor),
              ))
      ],
    );
  }
}
