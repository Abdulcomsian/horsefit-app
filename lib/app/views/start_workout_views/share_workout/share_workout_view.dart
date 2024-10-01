import '../../../../core/constants/exports.dart';

class ShareWorkoutView extends StatelessWidget {
  const ShareWorkoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Save and share workouts'),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 92.ph, vertical: 42.pv),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 82.ph),
                  child: TextViewWidget(
                    'Select Workout you want to share',
                    align: TextAlign.center,
                    style: textTheme.displayLarge,
                  ),
                ),
                SizedBox(height: 66.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 82.ph),
                  child: TextViewWidget(
                    'If you don\'t save or share a workout it will be deleted within 48 hours',
                    align: TextAlign.center,
                    style: textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 60.h),
                Flexible(
                    child: ListView.builder(
                        itemCount: 10,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => Container(
                              margin: EdgeInsets.only(bottom: 64.pv),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 72.ph, vertical: 42.pv),
                              decoration: BoxDecoration(
                                color: AppColors.grayColor,
                                borderRadius: BorderRadius.circular(62.r),
                              ),
                              child: Row(
                                children: [
                                  ClipOval(
                                    child: CachedNetworkImageWidget(
                                      imageUrl: ConstantsResource.horseUrl,
                                      size: 142.w,
                                    ),
                                  ),
                                  SizedBox(width: 34.w),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextViewWidget(
                                        'Maksi Royale',
                                        style: textTheme.titleLarge,
                                      ),
                                      SizedBox(height: 12.h),
                                      TextViewWidget(
                                        'Last workout: Today with Mari Alma\nFinished the workout at 12:34',
                                        style: textTheme.titleSmall?.copyWith(
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 56.ph, vertical: 56.pv),
                                    decoration: const BoxDecoration(
                                      color: AppColors.darkColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: SvgPictureAssetWidget(
                                      ImagesResource.shareIcon,
                                      size: 62.w,
                                    ),
                                  ).onTap(() => context
                                      .pushNamed(RouteNames.workoutDetailsView))
                                ],
                              ),
                            )))
              ],
            ),
          ),
        );
      }),
    );
  }
}
