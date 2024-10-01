import '../../../../core/constants/exports.dart';

class PublicProfileView extends StatelessWidget {
  const PublicProfileView({super.key, PublicProfileArgs? args}) : _args = args;

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
                        onAvatarInfoTap: state.isFollow
                            ? () => context.pushNamed(
                                RouteNames.publicProfileInfoView,
                                arguments: _args)
                            : null,
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
                      SizedBox(height: 36.h),
                      ProfileStatsCardWidget(
                        profileStatsEnum: state.profileStats,
                        leading: !isViewHorseProfile
                            ? ProfileStatsCardTileWidget(
                                icon: ImagesResource.followingIcon,
                                title: 'Following',
                                subTitle: '45',
                                isSelected: state.profileStats ==
                                    ProfileStatsEnum.following,
                              )
                            : null,
                        onLeadingTap: () {
                          if (state.isFollow) {
                            context.read<PublicProfileBloc>().add(
                                PublicProfileEvent.changeProfileStats(
                                    profileStats: !isViewHorseProfile
                                        ? ProfileStatsEnum.following
                                        : ProfileStatsEnum.photos));
                          }
                        },
                        onCenterTap: () {
                          if (state.isFollow) {
                            context.read<PublicProfileBloc>().add(
                                const PublicProfileEvent.changeProfileStats(
                                    profileStats: ProfileStatsEnum.followers));
                          }
                        },
                        onTrailingTap: () {},
                      ),
                      SizedBox(height: 92.h),
                      Row(
                        children: [
                          Expanded(
                              child: ButtonWidget(
                            padding: EdgeInsets.symmetric(vertical: 56.pv),
                            margin: EdgeInsets.only(left: 88.ph),
                            icon: const RadioWidget(
                                isSelected: true, color: Color(0xFF69CFDF)),
                            btnText: state.isFollow ? 'Following' : 'Follow',
                            onTap: () => context
                                .read<PublicProfileBloc>()
                                .add(const PublicProfileEvent.onFollow()),
                          )),
                          SizedBox(width: 52.w),
                          Expanded(
                              child: ButtonWidget(
                            padding: EdgeInsets.symmetric(vertical: 48.pv),
                            margin: EdgeInsets.only(right: 88.ph),
                            isShowBorder: true,
                            borderColor:
                                !state.isFollow ? AppColors.grayColor : null,
                            textColor: state.isFollow
                                ? AppColors.darkColor
                                : AppColors.darkColor.withOpacity(0.4),
                            icon: SvgPictureAssetWidget(
                              isViewHorseProfile
                                  ? ImagesResource.statisticsIcon
                                  : ImagesResource.inviteIcon,
                              size: 86.w,
                              isApplyColorFilter: !state.isFollow,
                              color: AppColors.darkColor.withOpacity(0.4),
                            ),
                            btnText:
                                isViewHorseProfile ? 'Statistics' : 'Invite',
                            onTap: () {},
                          )),
                        ],
                      ),
                      Visibility(
                        visible: !state.isFollow,
                        child: Padding(
                          padding: EdgeInsets.only(top: 300.pv),
                          child: TextViewWidget(
                            'Follow to see posts from ${isViewHorseProfile ? 'Maksi Royale' : 'Kamran Khan'}.',
                            style: textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: state.isFollow &&
                            state.profileStats == ProfileStatsEnum.photos &&
                            !isViewHorseProfile,
                        child: const ShotsWidget(),
                      ),
                      Visibility(
                        visible: state.isFollow &&
                            state.profileStats == ProfileStatsEnum.photos,
                        child: Flexible(
                            child: ListView.separated(
                          itemCount: 10,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.symmetric(vertical: 132.pv),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => const PostWidget(),
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 132.h),
                        )),
                      ),
                      Visibility(
                        visible: state.isFollow &&
                            state.profileStats == ProfileStatsEnum.following,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 72.ph, vertical: 64.pv),
                              child: TextFormFieldWidget(
                                controller: TextEditingController(),
                                hintText: 'Search',
                                filledColor: AppColors.grayColor,
                                prefixIcon: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 32.ph),
                                  child: SvgPictureAssetWidget(
                                    ImagesResource.searchIcon,
                                    size: 72.w,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 98.ph, right: 98.ph, top: 32.pv),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                      text: TextSpan(
                                          text: 'Sorted by: ',
                                          style: textTheme.titleLarge?.copyWith(
                                              color: AppColors.darkColor
                                                  .withOpacity(0.6)),
                                          children: [
                                        TextSpan(
                                          text: 'Default',
                                          style: textTheme.titleLarge,
                                        )
                                      ])),
                                  SvgPictureAssetWidget(
                                    ImagesResource.sortIcon,
                                    size: 72.w,
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                                child: ListView.builder(
                              itemCount: 10,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 98.ph, vertical: 64.pv),
                              shrinkWrap: true,
                              itemBuilder: (context, index) => Container(
                                color: Colors.transparent,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 54.ph, vertical: 54.pv),
                                child: Row(
                                  children: [
                                    ClipOval(
                                      child: CachedNetworkImageWidget(
                                        imageUrl: ConstantsResource.profileUrl,
                                        size: 132.w,
                                      ),
                                    ),
                                    SizedBox(width: 52.w),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextViewWidget(
                                            'Kamran Khan',
                                            style: textTheme.titleLarge,
                                          ),
                                          TextViewWidget(
                                            'Trainer & Owner',
                                            style: textTheme.titleLarge
                                                ?.copyWith(
                                                    color: AppColors.darkColor
                                                        .withOpacity(0.6)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 32.w),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 78.ph, vertical: 24.pv),
                                      decoration: BoxDecoration(
                                        color: AppColors.darkGrayColor,
                                        borderRadius:
                                            BorderRadius.circular(24.r),
                                      ),
                                      child: TextViewWidget('Following',
                                          style: textTheme.labelLarge),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: state.isFollow &&
                            state.profileStats == ProfileStatsEnum.followers,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 72.ph, vertical: 64.pv),
                              child: TextFormFieldWidget(
                                controller: TextEditingController(),
                                hintText: 'Search',
                                filledColor: AppColors.grayColor,
                                prefixIcon: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 32.ph),
                                  child: SvgPictureAssetWidget(
                                    ImagesResource.searchIcon,
                                    size: 72.w,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 98.ph, right: 98.ph, top: 32.pv),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                      text: TextSpan(
                                          text: 'Sorted by: ',
                                          style: textTheme.titleLarge?.copyWith(
                                              color: AppColors.darkColor
                                                  .withOpacity(0.6)),
                                          children: [
                                        TextSpan(
                                          text: 'Default',
                                          style: textTheme.titleLarge,
                                        )
                                      ])),
                                  SvgPictureAssetWidget(
                                    ImagesResource.sortIcon,
                                    size: 72.w,
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                                child: ListView.builder(
                              itemCount: 10,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 98.ph, vertical: 64.pv),
                              shrinkWrap: true,
                              itemBuilder: (context, index) => Container(
                                color: Colors.transparent,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 54.ph, vertical: 54.pv),
                                child: Row(
                                  children: [
                                    ClipOval(
                                      child: CachedNetworkImageWidget(
                                        imageUrl: ConstantsResource.profileUrl,
                                        size: 132.w,
                                      ),
                                    ),
                                    SizedBox(width: 52.w),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextViewWidget(
                                            'Kamran Khan',
                                            style: textTheme.titleLarge,
                                          ),
                                          TextViewWidget(
                                            'Trainer & Owner',
                                            style: textTheme.titleLarge
                                                ?.copyWith(
                                                    color: AppColors.darkColor
                                                        .withOpacity(0.6)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 32.w),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 78.ph, vertical: 24.pv),
                                      decoration: BoxDecoration(
                                        color: AppColors.darkGrayColor,
                                        borderRadius:
                                            BorderRadius.circular(24.r),
                                      ),
                                      child: TextViewWidget('Remove',
                                          style: textTheme.labelLarge),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
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
