import '../../../../core/constants/exports.dart';

class UserTypeWidget extends StatelessWidget {
  const UserTypeWidget({
    super.key,
    required String icon,
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
  })  : _icon = icon,
        _text = text,
        _isSelected = isSelected,
        _onTap = onTap;

  final String _icon;
  final String _text;
  final bool _isSelected;
  final VoidCallback _onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grayColor,
        borderRadius: BorderRadius.circular(48.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 62.ph, top: 62.pv),
                child: SvgPictureAssetWidget(_icon, size: 68.w),
              ),
              SizedBox(width: 120.w),
              Container(
                margin: EdgeInsets.only(right: 32.ph, top: 36.pv),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color:
                      _isSelected ? AppColors.primaryColor : Colors.transparent,
                  border: Border.all(color: AppColors.borderColor),
                  shape: BoxShape.circle,
                ),
              )
            ],
          ),
          SizedBox(height: 52.h),
          Padding(
            padding: EdgeInsets.only(left: 62.ph, bottom: 62.pv),
            child: TextViewWidget(
              _text,
              style: textTheme.titleLarge
                  ?.copyWith(color: const Color(0XFF150B43)),
            ),
          )
        ],
      ),
    ).onTap(_onTap);
  }
}
