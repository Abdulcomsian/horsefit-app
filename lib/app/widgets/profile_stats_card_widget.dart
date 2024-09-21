import '../../core/constants/exports.dart';

class ProfileStatsCardWidget extends StatelessWidget {
  const ProfileStatsCardWidget({super.key, Widget? trailing})
      : _trailing = trailing;

  final Widget? _trailing;

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
          const Expanded(
            child: ProfileStatsCardTileWidget(
              icon: ImagesResource.photosIcon,
              title: 'Photos',
              subTitle: '90',
            ),
          ),
          SizedBox(width: 24.w),
          const Expanded(
            child: ProfileStatsCardTileWidget(
              icon: ImagesResource.followersIcon,
              title: 'Followers',
              subTitle: '980',
            ),
          ),
          SizedBox(width: 24.w),
          Expanded(
            child: _trailing ??
                const ProfileStatsCardTileWidget(
                  icon: ImagesResource.photosIcon,
                  title: 'Workouts',
                  subTitle: '36',
                ),
          ),
        ],
      ),
    );
  }
}
