import '../../../../core/constants/exports.dart';

class MyStableView extends StatelessWidget {
  const MyStableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'My Stable'),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 80.ph, vertical: 80.pv),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ProfileCardWidget(
            imageUrl:
                'https://images.unsplash.com/uploads/14136148007774dc82563/ce92d553?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG9yc2V8ZW58MHx8MHx8fDA%3D',
            title: 'Maksi Royale',
            subTitle: '3 year warmblood Trotter Stallion',
            isEllipsis: false,
            bgColor: AppColors.grayColor,
            titleColor: AppColors.darkColor,
            subTitleColor: AppColors.darkColor,
            trailing: Column(
              children: [
                CachedNetworkImageWidget(
                  imageUrl:
                      'https://uxwing.com/wp-content/themes/uxwing/download/flags-landmarks/pakistan-flag-icon.png',
                  size: 92.h,
                  borderRadius: BorderRadius.circular(100.r),
                ),
                SizedBox(height: 12.h),
                TextViewWidget(
                  'Pakistan',
                  style: textTheme.labelLarge,
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 48.h),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ButtonWidget(
            icon:
                SvgPictureAssetWidget(ImagesResource.addHorseIcon, size: 72.w),
            btnText: 'Add Horse',
            margin: EdgeInsets.only(
                left: 124.ph, right: 124.ph, top: 40.pv, bottom: 72.pv),
            isShowBorder: true,
            textColor: AppColors.darkColor,
            onTap: () => context.pushNamed(RouteNames.addHorseView),
          ),
        ],
      ),
    );
  }
}
