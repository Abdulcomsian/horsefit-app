import '../../../../core/constants/exports.dart';

class FeedHeaderWidget extends StatelessWidget {
  const FeedHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.stealColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(118.r),
          bottomRight: Radius.circular(118.r),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 42.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24.ph, top: 24.pv),
                child: SvgPictureAssetWidget(
                  ImagesResource.coloredLogoIcon,
                  width: 460.w,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(right: 24.ph, top: 24.pv),
                  padding:
                      EdgeInsets.symmetric(horizontal: 42.ph, vertical: 42.pv),
                  decoration: BoxDecoration(
                    color: const Color(0xFF4D5374),
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: AppColors.stealColor.withOpacity(0.4),
                        width: 12.w),
                  ),
                  child: SvgPictureAssetWidget(
                    ImagesResource.menuOutlinedIcon,
                    size: 102.w,
                  )).onTap(() => feedScaffoldKey.currentState?.openDrawer())
            ],
          ),
          SizedBox(height: 140.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 52.ph),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const FeedTabItemWidget(
                  icon: ImagesResource.mediaImagesIcon,
                  isSelected: true,
                  count: 0,
                ),
                const FeedTabItemWidget(
                  icon: ImagesResource.mediaVideosIcon,
                  isSelected: false,
                  count: 2,
                ),
                const FeedTabItemWidget(
                  icon: ImagesResource.chatIcon,
                  secondIcon: ImagesResource.notificationIcon,
                  isSelected: false,
                  count: 3,
                ).onTap(() => context.pushNamed(RouteNames.messageCenterView)),
              ],
            ),
          ),
          SizedBox(height: 62.h),
        ],
      ),
    );
  }
}
