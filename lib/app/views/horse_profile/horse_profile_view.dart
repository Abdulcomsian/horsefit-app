import '../../../../core/constants/exports.dart';

class HorseProfileView extends StatelessWidget {
  const HorseProfileView({super.key});

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
                      UserProfileCardWidget(
                        profileImgUrl: ConstantsResource.horseUrl,
                        bannerImgUrl: ConstantsResource.horseBannerUrl,
                        isShowOnlyProfile: true,
                        isShowInfoOnAvatar: state.isFollow,
                        widget: SvgPictureAssetWidget(
                          ImagesResource.infoIcon,
                          size: 98.w,
                        ),
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
                      const ProfileStatsCardWidget(),
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
                                .read<HorseProfileBloc>()
                                .add(const HorseProfileEvent.onFollow()),
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
                              ImagesResource.statistics1Icon,
                              size: 86.w,
                              isApplyColorFilter: !state.isFollow,
                              color: AppColors.darkColor.withOpacity(0.4),
                            ),
                            btnText: 'Statistics',
                            onTap: () {},
                          )),
                        ],
                      ),
                      Visibility(
                        visible: !state.isFollow,
                        child: Padding(
                          padding: EdgeInsets.only(top: 300.pv),
                          child: TextViewWidget(
                            'Follow to see posts from Maksi Royale.',
                            style: textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: state.isFollow,
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
