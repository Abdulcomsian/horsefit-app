import '../../core/constants/exports.dart';

class UserProfileCardWidget extends StatelessWidget {
  const UserProfileCardWidget({
    super.key,
    required String profileImgUrl,
    required String bannerImgUrl,
    bool isShowOnlyProfile = false,
    bool isShowInfoOnAvatar = false,
    Widget? widget,
  })  : _profileImgUrl = profileImgUrl,
        _bannerImgUrl = bannerImgUrl,
        _isShowOnlyProfile = isShowOnlyProfile,
        _isShowInfoOnAvatar = isShowInfoOnAvatar,
        _widget = widget;

  final String _profileImgUrl;
  final String _bannerImgUrl;
  final bool _isShowOnlyProfile;
  final bool _isShowInfoOnAvatar;
  final Widget? _widget;

  @override
  Widget build(BuildContext context) {
    logger.i(_bannerImgUrl);

    return Stack(
      children: [
        Stack(
          children: [
            Container(height: 1020.h),
            CachedNetworkImageWidget(
              imageUrl: _bannerImgUrl,
              height: 800.h,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(118.r),
                bottomRight: Radius.circular(118.r),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 1020.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.ph, right: 40.ph, top: 12.pv),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BackButtonWidget(color: AppColors.whiteColor),
                    if (_widget != null) _widget
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 100.ph, right: 140.ph),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: _isShowOnlyProfile
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          width: 420.w,
                          height: 420.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 28.w, color: AppColors.whiteColor),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: CachedNetworkImageProvider(
                                      _profileImgUrl))),
                        ),
                        if (_isShowInfoOnAvatar)
                          Container(
                            width: 162.w,
                            height: 162.w,
                            padding: EdgeInsets.symmetric(
                                horizontal: 26.ph, vertical: 26.pv),
                            decoration: BoxDecoration(
                              color: AppColors.darkColor,
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 20.w,
                                color: AppColors.whiteColor,
                              ),
                            ),
                            child: const SvgPictureAssetWidget(
                                ImagesResource.infoIcon),
                          ).onTap(
                              () => context.pushNamed(RouteNames.horseInfoView))
                      ],
                    ),
                    if (!_isShowOnlyProfile) SizedBox(width: 40.w),
                    if (!_isShowOnlyProfile)
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextViewWidget(
                              'Workout Log',
                              style: textTheme.displayMedium?.copyWith(
                                fontSize: 92.sp,
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            TextViewWidget(
                              'Kamran Khan',
                              style: textTheme.headlineMedium?.copyWith(
                                fontSize: 62.sp,
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w600,
                              ),
                              isEllipsis: true,
                              maxLines: 1,
                            ),
                            SizedBox(height: 102.h),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 48.ph, vertical: 32.pv),
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(230.r),
                                border: Border.all(color: AppColors.grayColor),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPictureAssetWidget(
                                    ImagesResource.horseNameIcon,
                                    size: 82.w,
                                  ),
                                  SizedBox(width: 36.w),
                                  TextViewWidget(
                                    'Select horses to show',
                                    style: textTheme.titleMedium
                                        ?.copyWith(fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ).onTap(() =>
                                context.pushNamed(RouteNames.selectHorseView))
                          ],
                        ),
                      ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
