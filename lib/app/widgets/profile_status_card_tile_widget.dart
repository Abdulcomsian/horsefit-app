import '../../core/constants/exports.dart';

class ProfileStatsCardTileWidget extends StatelessWidget {
  const ProfileStatsCardTileWidget({
    super.key,
    required String icon,
    required String title,
    required String subTitle,
    bool isNetworkIcon = false,
    bool isSelected = false,
  })  : _icon = icon,
        _isNetworkIcon = isNetworkIcon,
        _title = title,
        _subTitle = subTitle,
        _isSelected = isSelected;

  final String _icon;
  final bool _isNetworkIcon;
  final String _title;
  final String _subTitle;
  final bool _isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _isNetworkIcon
            ? ClipOval(
                child: CachedNetworkImageWidget(imageUrl: _icon, size: 92.w))
            : SvgPictureAssetWidget(_icon, size: 92.w),
        SizedBox(height: 20.h),
        TextViewWidget(
          _title,
          style: textTheme.titleLarge?.copyWith(
              color:
                  !_isSelected ? AppColors.darkColor.withOpacity(0.4) : null),
        ),
        SizedBox(height: 8.h),
        TextViewWidget(
          _subTitle,
          style: textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
