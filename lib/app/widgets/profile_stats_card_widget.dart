import '../../core/constants/exports.dart';

class ProfileStatsCardWidget extends StatelessWidget {
  const ProfileStatsCardWidget({
    super.key,
    required ProfileStatsEnum profileStatsEnum,
    Widget? leading,
    Widget? center,
    Widget? trailing,
    VoidCallback? onLeadingTap,
    VoidCallback? onCenterTap,
    VoidCallback? onTrailingTap,
  })  : _profileStatsEnum = profileStatsEnum,
        _leading = leading,
        _center = center,
        _trailing = trailing,
        _onLeadingTap = onLeadingTap,
        _onCenterTap = onCenterTap,
        _onTrailingTap = onTrailingTap;

  final ProfileStatsEnum _profileStatsEnum;
  final Widget? _leading;
  final Widget? _center;
  final Widget? _trailing;
  final VoidCallback? _onLeadingTap;
  final VoidCallback? _onCenterTap;
  final VoidCallback? _onTrailingTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 62.ph, vertical: 72.pv),
      margin: EdgeInsets.symmetric(horizontal: 72.ph),
      decoration: BoxDecoration(
        color: AppColors.grayColor,
        borderRadius: BorderRadius.circular(78.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: _leading ??
                  ProfileStatsCardTileWidget(
                    icon: ImagesResource.photosIcon,
                    title: 'Photos',
                    subTitle: '90',
                    isSelected: _profileStatsEnum == ProfileStatsEnum.photos,
                  ),
            ).onTap(_onLeadingTap),
          ),
          SizedBox(width: 24.w),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: _center ??
                  ProfileStatsCardTileWidget(
                    icon: ImagesResource.followersIcon,
                    title: 'Followers',
                    subTitle: '980',
                    isSelected: _profileStatsEnum == ProfileStatsEnum.followers,
                  ),
            ).onTap(_onCenterTap),
          ),
          SizedBox(width: 24.w),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: _trailing ??
                  ProfileStatsCardTileWidget(
                    icon: ImagesResource.workoutsIcon,
                    title: 'Workouts',
                    subTitle: '36',
                    isSelected: _profileStatsEnum == ProfileStatsEnum.workouts,
                  ),
            ).onTap(_onTrailingTap),
          ),
        ],
      ),
    );
  }
}
