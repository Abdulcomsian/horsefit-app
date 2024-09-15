import '../../core/constants/exports.dart';

class ProfileStatsCardWidget extends StatelessWidget {
  const ProfileStatsCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 172.ph, vertical: 72.pv),
      margin: EdgeInsets.symmetric(horizontal: 72.ph),
      decoration: BoxDecoration(
        color: AppColors.grayColor,
        borderRadius: BorderRadius.circular(78.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ProfileStatsCardTileWidget(
            icon: ImagesResource.photosIcon,
            title: 'Photos',
            subTitle: '90',
          ),
          SizedBox(width: 24.w),
          const ProfileStatsCardTileWidget(
            icon: ImagesResource.followersIcon,
            title: 'Followers',
            subTitle: '980',
          ),
          SizedBox(width: 24.w),
          const ProfileStatsCardTileWidget(
            icon: ImagesResource.photosIcon,
            title: 'Workouts',
            subTitle: '36',
          ),
        ],
      ),
    );
  }
}

class ProfileStatsCardTileWidget extends StatelessWidget {
  const ProfileStatsCardTileWidget({
    super.key,
    required String icon,
    required String title,
    required String subTitle,
  })  : _icon = icon,
        _title = title,
        _subTitle = subTitle;

  final String _icon;
  final String _title;
  final String _subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPictureAssetWidget(_icon, size: 92.w),
        SizedBox(height: 20.h),
        TextViewWidget(
          _title,
          style: textTheme.titleLarge
              ?.copyWith(color: AppColors.darkColor.withOpacity(0.4)),
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
