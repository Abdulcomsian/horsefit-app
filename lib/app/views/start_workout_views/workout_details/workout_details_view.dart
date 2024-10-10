import '../../../../core/constants/exports.dart';

class WorkoutDetailsView extends StatelessWidget {
  const WorkoutDetailsView({super.key, VoidCallback? onTap}) : _onTap = onTap;

  final VoidCallback? _onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(132.r),
                    child: Image.asset(ImagesResource.mapImg),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 26.ph, vertical: 32.pv),
                        padding: EdgeInsets.symmetric(
                            horizontal: 56.ph, vertical: 52.pv),
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(120.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipOval(
                                child: CachedNetworkImageWidget(
                              imageUrl: ConstantsResource.profileUrl,
                              size: 164.w,
                            )),
                            Column(
                              children: [
                                TextViewWidget(
                                  'Workout details',
                                  style: textTheme.headlineMedium
                                      ?.copyWith(fontWeight: FontWeight.w700),
                                ),
                                TextViewWidget(
                                  'Saturday, 1 Jun 2019, 14:06',
                                  style: textTheme.titleMedium,
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 52.ph, vertical: 52.pv),
                              decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: AppColors.grayColor)),
                              child: const Icon(Icons.close),
                            ).onTap(_onTap ?? () => context.pop()),
                          ],
                        ),
                      ),
                      SizedBox(height: 620.h),
                      Container(
                        margin: EdgeInsets.only(right: 62.ph),
                        padding: EdgeInsets.symmetric(
                            horizontal: 52.ph, vertical: 52.pv),
                        decoration: const BoxDecoration(
                          color: AppColors.darkColor,
                          shape: BoxShape.circle,
                        ),
                        child: SvgPictureAssetWidget(
                          ImagesResource.shareIcon,
                          size: 92.w,
                        ),
                      ).centerRight().onTap(

                          ///! TODO Pass the args from tracking the flow
                          () async =>
                              await locator<DialogueUtils>().customDialog(
                                context,
                                title:
                                    'Are you sure you want to share the workout?',
                                closeBtnText: 'Cancel',
                                doneBtnText: 'Share',
                                onDone: () {
                                  context.pop();
                                  context.pushNamed(RouteNames.finishPostView);
                                },
                              )),
                      SizedBox(height: 62.h),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 74.ph, vertical: 48.pv),
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(118.r),
                              topRight: Radius.circular(118.r),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.ph, vertical: 20.pv),
                              decoration: BoxDecoration(
                                color: AppColors.grayColor,
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: Row(
                                children: [
                                  ToggleSelectionButtonWidget(
                                    icon: ImagesResource.overviewIcon,
                                    iconSize: 86.w,
                                    btnText: 'Overview',
                                    isSelected: true,
                                    onTap: () {},
                                  ),
                                  ToggleSelectionButtonWidget(
                                    icon: ImagesResource.statsIcon,
                                    iconSize: 86.w,
                                    btnText: 'Stats',
                                    isSelected: false,
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 132.h),
                            Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 120.ph, vertical: 78.pv),
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.grayColor),
                                borderRadius: BorderRadius.circular(78.r),
                              ),
                              child: TextViewWidget(
                                'Tap here to write to add something about the workout.',
                                style: textTheme.titleLarge
                                    ?.copyWith(fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(height: 70.h),
                            Row(
                              children: [
                                const Expanded(
                                    child: SelectedWorkoutTypeWidget(
                                  icon: ImagesResource.basicIcon,
                                  title: 'Interval\nWorkout',
                                )),
                                SizedBox(width: 50.w),
                                const Expanded(
                                    child: SelectedWorkoutTypeWidget(
                                  icon: ImagesResource.flatIcon,
                                  title: 'Flat\nTerrain',
                                )),
                                SizedBox(width: 50.w),
                                const Expanded(
                                    child: SelectedWorkoutTypeWidget(
                                  icon: ImagesResource.normalIcon,
                                  title: 'Normal\nIntensity',
                                )),
                              ],
                            ),
                            SizedBox(height: 70.h),
                            Row(
                              children: [
                                const Expanded(
                                    child: WorkoutInfoCardWidget(
                                  leading: 'Speed',
                                  title: '56',
                                  subTitle: 'km/h',
                                  color: AppColors.primaryColor,
                                )),
                                SizedBox(width: 50.w),
                                const Expanded(
                                    child: WorkoutInfoCardWidget(
                                  leading: 'Avg. Pace',
                                  title: '1:20',
                                  subTitle: 'min/km',
                                  color: AppColors.greenColor,
                                )),
                                SizedBox(width: 50.w),
                                const Expanded(
                                    child: WorkoutInfoCardWidget(
                                  leading: 'Heart Rate',
                                  title: '195',
                                  subTitle: '85%',
                                  color: AppColors.redColor,
                                )),
                                SizedBox(width: 50.w),
                                const Expanded(
                                    child: WorkoutInfoCardWidget(
                                  leading: 'Distance',
                                  title: '1.2',
                                  subTitle: 'km',
                                  color: AppColors.secondaryColor,
                                )),
                              ],
                            ),
                            SizedBox(height: 72.h),
                            TextViewWidget(
                              'Workout Satisfaction',
                              style: textTheme.titleLarge,
                            ),
                            SizedBox(height: 36.h),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 182.ph, vertical: 88.pv),
                              decoration: BoxDecoration(
                                color: AppColors.darkGrayColor,
                                borderRadius: BorderRadius.circular(172.r),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPictureAssetWidget(
                                    ImagesResource.sadEmojiIcon,
                                    size: 166.w,
                                  ),
                                  SizedBox(width: 24.w),
                                  SvgPictureAssetWidget(
                                    ImagesResource.normalEmojiIcon,
                                    size: 166.w,
                                  ),
                                  SizedBox(width: 24.w),
                                  SvgPictureAssetWidget(
                                    ImagesResource.happyEmojiIcon,
                                    size: 166.w,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 92.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPictureAssetWidget(
                                  ImagesResource.trashIcon,
                                  size: 86.w,
                                ),
                                SizedBox(width: 24.w),
                                TextViewWidget(
                                  'Delete Workout',
                                  style: textTheme.titleLarge,
                                )
                              ],
                            ).onTap(() async {
                              final result =
                                  await locator<DialogueUtils>().customDialog(
                                context,
                                title: 'Delete workout?',
                                closeBtnColor: AppColors.redColor,
                                closeBtnText: 'Yes',
                                doneBtnText: 'No',
                                doneBtnBorderColor: AppColors.grayColor,
                              );
                              if (result) return;

                              ///! When the result false then execute this b/c i toggle the buttons
                              ///! Delete workout and on success navigate
                              context.pushNamedAndRemoveUntil(
                                  RouteNames.workoutDeletedView);
                            })
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
