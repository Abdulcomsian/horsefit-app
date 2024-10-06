import '../../../../core/constants/exports.dart';

class WorkoutDeletedView extends StatelessWidget {
  const WorkoutDeletedView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? result) {
        if (didPop) return;
        context.pushReplacementNamed(RouteNames.feedView);
      },
      child: Scaffold(
        appBar: AppBarWidget(
          isShowLeading: false,
          title: '',
          actions: [
            Container(
              margin: EdgeInsets.only(right: 40.ph),
              padding: EdgeInsets.symmetric(horizontal: 72.ph, vertical: 72.pv),
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child:
                  SvgPictureAssetWidget(ImagesResource.closeIcon, size: 36.w),
            ).onTap(() => context.pushReplacementNamed(RouteNames.feedView)),
          ],
        ),
        body: SizedBox.expand(
          child: Column(
            children: [
              SizedBox(height: 260.h),
              TextViewWidget('Deleted', style: textTheme.displayLarge),
              Container(
                margin: EdgeInsets.symmetric(vertical: 178.pv),
                padding:
                    EdgeInsets.symmetric(horizontal: 52.ph, vertical: 52.pv),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFD964).withOpacity(0.42),
                  shape: BoxShape.circle,
                ),
                child: SvgPictureAssetWidget(
                  ImagesResource.closeIcon,
                  size: 62.w,
                  isApplyColorFilter: true,
                  color: AppColors.orangeColor,
                ),
              ),
              TextViewWidget('Your workout has been deleted.',
                  style: textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ButtonWidget(
              margin:
                  EdgeInsets.symmetric(horizontal: 124.ph, vertical: 192.pv),
              isShowBorder: true,
              textColor: AppColors.darkColor,
              btnText: 'Back to Main Feed',
              onTap: () => context.pushReplacementNamed(RouteNames.feedView),
            ),
          ],
        ),
      ),
    );
  }
}
