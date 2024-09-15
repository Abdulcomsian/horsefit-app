import '../../../../../core/constants/exports.dart';

class HorseWorkoutLogCardWidget extends StatelessWidget {
  const HorseWorkoutLogCardWidget(
      {super.key, required HorseProfile horseProfile})
      : _horseProfile = horseProfile;

  final HorseProfile _horseProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 62.ph, vertical: 62.pv),
      decoration: BoxDecoration(
        color: AppColors.grayColor,
        borderRadius: BorderRadius.circular(62.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipOval(
                child: CachedNetworkImageWidget(
                  imageUrl: _horseProfile.imageUrl,
                  size: 142.w,
                ),
              ),
              SizedBox(width: 36.w),
              TextViewWidget(_horseProfile.name, style: textTheme.titleLarge),
              const Spacer(),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 24.ph, vertical: 24.pv),
                decoration: BoxDecoration(
                  color: AppColors.grayColor,
                  border: Border.all(),
                  shape: BoxShape.circle,
                ),
                child: SvgPictureAssetWidget(
                  ImagesResource.arrowForwardIcon,
                  size: 32.w,
                  isApplyColorFilter: true,
                  color: AppColors.darkColor.withOpacity(0.6),
                ),
              )
            ],
          ),
          SizedBox(height: 60.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPictureAssetWidget(ImagesResource.basicIcon, size: 56.w),
                  SizedBox(width: 24.w),
                  TextViewWidget(
                    'Basic Workout',
                    style: textTheme.labelLarge
                        ?.copyWith(fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Row(
                children: [
                  SvgPictureAssetWidget(ImagesResource.flatIcon, size: 56.w),
                  SizedBox(width: 24.w),
                  TextViewWidget(
                    'Flat',
                    style: textTheme.labelLarge
                        ?.copyWith(fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Row(
                children: [
                  SvgPictureAssetWidget(ImagesResource.hardIcon, size: 56.w),
                  SizedBox(width: 24.w),
                  TextViewWidget(
                    'Hard',
                    style: textTheme.labelLarge
                        ?.copyWith(fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
