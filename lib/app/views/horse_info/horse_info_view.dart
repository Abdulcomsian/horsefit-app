import '../../../../core/constants/exports.dart';

class HorseInfoView extends StatelessWidget {
  const HorseInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constaints) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: BlocBuilder<HorseProfileBloc, HorseProfileState>(
              builder: (context, state) {
                return ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constaints.maxHeight),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const UserProfileCardWidget(
                        profileImgUrl: ConstantsResource.horseUrl,
                        bannerImgUrl: ConstantsResource.horseBannerUrl,
                        isShowOnlyProfile: true,
                      ),
                      SizedBox(height: 32.h),
                      TextViewWidget(
                        'Maksi Royale',
                        style: textTheme.displayMedium
                            ?.copyWith(fontWeight: FontWeight.w900),
                      ),
                      SizedBox(height: 20.h),
                      TextViewWidget(
                        '3 year / Warmblood trotter. Stallion',
                        style: textTheme.titleLarge
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 36.h),
                      const ProfileStatsCardWidget(
                        trailing: ProfileStatsCardTileWidget(
                          icon: ConstantsResource.countryUrl,
                          isNetworkIcon: true,
                          title: 'Country',
                          subTitle: 'Pakistan',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 72.ph, vertical: 72.pv),
                        padding: EdgeInsets.symmetric(
                            horizontal: 120.ph, vertical: 92.pv),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.grayColor),
                          borderRadius: BorderRadius.circular(78.r),
                        ),
                        child: TextViewWidget(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis consequat eros. Nullam non venenatis augue.',
                          style: textTheme.titleLarge
                              ?.copyWith(fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 72.ph),
                        child: Row(
                          children: [
                            Expanded(
                                child: ParentNameCardWidget(
                              title: 'Father',
                              subTitle: 'Atom Winter',
                              onTap: () {},
                            )),
                            SizedBox(width: 72.w),
                            Expanded(
                                child: ParentNameCardWidget(
                              title: 'Mother',
                              subTitle: 'Blossom Jennica',
                              onTap: () {},
                            )),
                          ],
                        ),
                      ),
                      SizedBox(height: 152.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 72.ph),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextViewWidget(
                              'Owners & Trainers',
                              style: textTheme.headlineMedium?.copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 62.sp),
                            ),
                            Row(
                              children: [
                                SvgPictureAssetWidget(
                                  ImagesResource.addCircleFilledIcon,
                                  size: 88.w,
                                ),
                                SizedBox(width: 12.w),
                                TextViewWidget(
                                  'Add',
                                  style: textTheme.titleLarge
                                      ?.copyWith(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                          child: ListView.separated(
                        itemCount: 10,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(vertical: 68.pv),
                        shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            const UserProfileWidget(),
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 36.h),
                      )),
                    ],
                  ),
                );
              },
            ),
          );
        }),
      ),
    );
  }
}

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 82.ph, vertical: 72.pv),
      margin: EdgeInsets.symmetric(horizontal: 72.ph),
      decoration: BoxDecoration(
        color: AppColors.grayColor,
        borderRadius: BorderRadius.circular(66.r),
      ),
      child: Row(
        children: [
          ClipOval(
            child: CachedNetworkImageWidget(
              imageUrl: ConstantsResource.profileUrl,
              size: 142.w,
            ),
          ),
          SizedBox(width: 32.w),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextViewWidget(
                  'Kamran Khan',
                  style: textTheme.titleLarge,
                ),
                TextViewWidget(
                  'Owner & Trainer',
                  style: textTheme.titleSmall,
                ),
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RadioWidget(
                isSelected: true,
                color: AppColors.primaryColor.withOpacity(0.4),
              ),
              TextViewWidget(
                'Following',
                style: textTheme.titleSmall?.copyWith(
                  fontSize: 42.sp,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ParentNameCardWidget extends StatelessWidget {
  const ParentNameCardWidget({
    super.key,
    required String title,
    subTitle,
    required VoidCallback onTap,
  })  : _title = title,
        _subTitle = subTitle,
        _onTap = onTap;
  final String _title, _subTitle;
  final VoidCallback _onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 86.ph, vertical: 72.pv),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.04),
        border: Border.all(color: AppColors.primaryColor.withOpacity(0.06)),
        borderRadius: BorderRadius.circular(78.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPictureAssetWidget(
            ImagesResource.arrowUpIcon,
            size: 42.w,
          ).topRight(),
          TextViewWidget(
            _title,
            style: textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 12.h),
          TextViewWidget(
            _subTitle,
            style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ).onTap(_onTap);
  }
}
