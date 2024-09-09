import '../../../core/constants/exports.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkColor.withOpacity(0.9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 42.ph, vertical: 42.pv),
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: AppColors.stealColor.withOpacity(0.4),
                            width: 12.w),
                      ),
                      child: SvgPictureAssetWidget(
                        ImagesResource.menuFilledIcon,
                        size: 102.w,
                      ))
                ],
              ),
              SizedBox(height: 112.h),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 80.ph, vertical: 48.pv),
                child: const ProfileCardWidget(
                  imageUrl:
                      'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                  title: 'Stein Hansen',
                  subTitle: 'tester@tester.com',
                ),
              ),
              SizedBox(height: 100.h),
              Flexible(
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 90.ph),
                  shrinkWrap: true,
                  itemCount: menuItems.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: SvgPictureAssetWidget(menuItems[index].icon,
                          size: 92.w),
                      title: TextViewWidget(
                        menuItems[index].text,
                        style: textTheme.headlineMedium?.copyWith(
                          color: AppColors.whiteColor,
                          fontSize: 64.sp,
                        ),
                      ),
                      onTap: () => context.pushNamed(menuItems[index].route),
                    );
                  },
                  separatorBuilder: (context, index) {
                    if (index == 2 || index == 4) {
                      return Divider(
                        color: AppColors.grayColor.withOpacity(0.15),
                        indent: 72.w,
                        endIndent: 24.w,
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final List<MenuModel> menuItems = [
  MenuModel(
    icon: ImagesResource.myStableIcon,
    text: 'My Stable',
    route: RouteNames.myStableView,
  ),
  MenuModel(
    icon: ImagesResource.startWorkoutIcon,
    text: 'Start Workout',
    route: RouteNames.myStableView,
  ),
  MenuModel(
    icon: ImagesResource.addFriendIcon,
    text: 'Add Friend',
    route: RouteNames.myStableView,
  ),
  MenuModel(
    icon: ImagesResource.workoutLogIcon,
    text: 'Workout Log',
    route: RouteNames.myStableView,
  ),
  MenuModel(
    icon: ImagesResource.statisticsIcon,
    text: 'Statistics',
    route: RouteNames.myStableView,
  ),
  MenuModel(
    icon: ImagesResource.addDeviceIcon,
    text: 'Add Device',
    route: RouteNames.myStableView,
  ),
  MenuModel(
    icon: ImagesResource.shopIcon,
    text: 'Shop',
    route: RouteNames.myStableView,
  ),
  MenuModel(
    icon: ImagesResource.supportAndSettingsIcon,
    text: 'Support/Settings',
    route: RouteNames.myStableView,
  ),
];
