import '../../core/constants/exports.dart';

class WorkoutConfigurationCardWidget extends StatelessWidget {
  const WorkoutConfigurationCardWidget({
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 42.ph),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 62.pv),
                  child: SvgPictureAssetWidget(_icon, size: 68.w),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 36.pv),
                  child: RadioWidget(isSelected: _isSelected),
                ),
              ],
            ),
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
