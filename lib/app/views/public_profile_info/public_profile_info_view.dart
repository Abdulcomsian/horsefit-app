import '../../../../core/constants/exports.dart';

class PublicProfileInfoView extends StatelessWidget {
  const PublicProfileInfoView({super.key, PublicProfileArgs? args})
      : _args = args;

  final PublicProfileArgs? _args;

  @override
  Widget build(BuildContext context) {
    final isViewHorseProfile = _args?.isViewHorseProfile ?? false;

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: BlocBuilder<PublicProfileBloc, PublicProfileState>(
              builder: (context, state) {
                return ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      UserProfileHeaderCardWidget(
                        profileImgUrl: isViewHorseProfile
                            ? ConstantsResource.horseUrl
                            : ConstantsResource.profileUrl,
                        bannerImgUrl: isViewHorseProfile
                            ? ConstantsResource.horseBannerUrl
                            : ConstantsResource.profileBannerUrl,
                        isShowOnlyProfile: true,
                      ),
                      SizedBox(height: 32.h),
                      TextViewWidget(
                        isViewHorseProfile ? 'Maksi Royale' : 'Kamran Khan',
                        style: textTheme.displayMedium
                            ?.copyWith(fontWeight: FontWeight.w900),
                      ),
                      SizedBox(height: 20.h),
                      TextViewWidget(
                        isViewHorseProfile
                            ? '3 year / Warm blood trotter. Stallion'
                            : 'Horse Trainer & Owner',
                        style: textTheme.titleLarge
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                      if (isViewHorseProfile) SizedBox(height: 82.h),
                      if (isViewHorseProfile)
                        const ProfileStatsCardWidget(
                          profileStatsEnum: ProfileStatsEnum.photos,
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
                      if (isViewHorseProfile)
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
                      SizedBox(height: isViewHorseProfile ? 152.h : 82.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 72.ph),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextViewWidget(
                              isViewHorseProfile
                                  ? 'Owners & Trainers'
                                  : 'Kamran Stable',
                              style: textTheme.headlineMedium?.copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 62.sp),
                            ),
                            if (isViewHorseProfile)
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
                              ).onTap(() => context.pushNamed(
                                  RouteNames.addOwnerAndTrainerView)),
                          ],
                        ),
                      ),
                      Flexible(
                          child: ListView.separated(
                        itemCount: 10,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(vertical: 68.pv),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => UserProfileCardWidget(
                          leading: ConstantsResource.horseUrl,
                          title: 'Maksi Royale',
                          subTitle: '3 year warm blood Trotter Stallion',
                          trailing: isViewHorseProfile
                              ? null
                              : Column(
                                  children: [
                                    ClipOval(
                                        child: CachedNetworkImageWidget(
                                      imageUrl: ConstantsResource.countryUrl,
                                      size: 88.w,
                                    )),
                                    SizedBox(height: 12.h),
                                    TextViewWidget('Pakistan',
                                        style: textTheme.labelLarge),
                                  ],
                                ),
                        ),
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
      floatingActionButton: !isViewHorseProfile
          ? FloatingActionButton(
              backgroundColor: AppColors.primaryColor,
              child: SvgPictureAssetWidget(ImagesResource.chatIcon, size: 92.w),
              onPressed: () => context.pushNamed(RouteNames.messageCenterView),
            )
          : null,
    );
  }
}
