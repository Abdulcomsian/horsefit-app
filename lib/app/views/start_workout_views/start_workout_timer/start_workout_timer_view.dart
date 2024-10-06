import 'package:horse_fit/app/views/start_workout_views/workout_details/workout_details_view.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../../core/constants/exports.dart';

class StartWorkoutTimerView extends StatelessWidget {
  const StartWorkoutTimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 42.ph),
              child: Row(
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
                              horizontal: 52.ph, vertical: 52.pv),
                          decoration: const BoxDecoration(
                            color: AppColors.whiteColor,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPictureAssetWidget(
                            ImagesResource.settingIcon,
                            size: 102.w,
                          ))
                      .onTap(
                          () => context.pushNamed(RouteNames.workoutSetupView))
                ],
              ),
            ),
            SizedBox(height: 250.h),
            BlocBuilder<StartWorkoutBloc, StartWorkoutState>(
              builder: (context, state) {
                return TextViewWidget(
                  '00:00',
                  style: textTheme.displayLarge?.copyWith(
                    fontSize: 300.sp,
                    color: AppColors.whiteColor,
                  ),
                );
              },
            ),
            SizedBox(height: 72.h),
            TextViewWidget(
              '1/6',
              style: textTheme.displayLarge?.copyWith(
                fontSize: 180.sp,
                color: AppColors.whiteColor,
              ),
            ),
            SizedBox(height: 96.h),
            Expanded(
              child: Container(
                padding:
                    EdgeInsets.only(left: 96.ph, right: 96.ph, top: 296.pv),
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(118.r),
                      topRight: Radius.circular(118.r),
                    )),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const WorkoutStatusCardWidget(
                          icon: ImagesResource.speedIcon,
                          color: AppColors.primaryColor,
                          title: 'Speed',
                          subTitle: '0',
                          trailing: 'km/h',
                        ),
                        SizedBox(width: 62.w),
                        const WorkoutStatusCardWidget(
                          icon: ImagesResource.timerIcon,
                          color: AppColors.greenColor,
                          title: 'Avg. Pace',
                          subTitle: '0:0',
                          trailing: 'min/km',
                        ),
                      ],
                    ),
                    SizedBox(height: 60.h),
                    Row(
                      children: [
                        const WorkoutStatusCardWidget(
                          icon: ImagesResource.heartIcon,
                          color: AppColors.redColor,
                          title: 'Heart Rate',
                          subTitle: '195',
                          trailing: '85%',
                        ),
                        SizedBox(width: 62.w),
                        const WorkoutStatusCardWidget(
                          icon: ImagesResource.distanceIcon,
                          color: AppColors.darkOrangeColor,
                          title: 'Distance',
                          subTitle: '0.0',
                          trailing: 'km',
                        ),
                      ],
                    ),
                    SizedBox(height: 96.h),
                    BlocBuilder<StartWorkoutBloc, StartWorkoutState>(
                      builder: (context, state) {
                        return Visibility(
                          visible: !state.isWorkoutStarted,
                          child: ButtonWidget(
                            width: 812.w,
                            padding: EdgeInsets.symmetric(vertical: 82.pv),
                            icon: SvgPictureAssetWidget(
                              ImagesResource.startIcon,
                              size: 62.w,
                            ),
                            btnText: 'Start',
                            onTap: () {
                              context
                                  .read<StartWorkoutBloc>()
                                  .add(const StartWorkoutEvent.startWorkout());
                            },
                          ),
                        );
                      },
                    ),
                    BlocBuilder<StartWorkoutBloc, StartWorkoutState>(
                      builder: (context, state) {
                        return Visibility(
                          visible: state.isWorkoutStarted && !state.isPaused,
                          child: ButtonWidget(
                            width: 812.w,
                            padding: EdgeInsets.symmetric(vertical: 82.pv),
                            icon: SvgPictureAssetWidget(
                              ImagesResource.pauseIcon,
                              size: 62.w,
                            ),
                            btnText: 'Pause',
                            color: AppColors.darkColor,
                            onTap: () {
                              context
                                  .read<StartWorkoutBloc>()
                                  .add(const StartWorkoutEvent.pauseWorkout());
                            },
                          ),
                        );
                      },
                    ),
                    BlocBuilder<StartWorkoutBloc, StartWorkoutState>(
                      builder: (context, state) {
                        return Visibility(
                          visible: state.isWorkoutStarted && state.isPaused,
                          child: Row(
                            children: [
                              Expanded(
                                child: ButtonWidget(
                                  icon: SvgPictureAssetWidget(
                                    ImagesResource.startIcon,
                                    size: 62.w,
                                  ),
                                  btnText: 'Start',
                                  onTap: () {
                                    context.read<StartWorkoutBloc>().add(
                                        const StartWorkoutEvent.startWorkout(
                                            isRestart: true));
                                  },
                                ),
                              ),
                              SizedBox(width: 62.w),
                              Expanded(
                                child: ButtonWidget(
                                  icon: SvgPictureAssetWidget(
                                    ImagesResource.stopIcon,
                                    size: 62.w,
                                  ),
                                  btnText: 'Stop',
                                  color: AppColors.redColor,
                                  onTap: () {
                                    locator<DialogueUtils>().customDialog(
                                        context,
                                        title:
                                            'Are you sure you want to \nend this workout?',
                                        onDone: () async {
                                      context.pop();
                                      showBarModalBottomSheet(
                                          context: context,
                                          shape: OutlineInputBorder(
                                              borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(132.r),
                                            topRight: Radius.circular(132.r),
                                          )),
                                          expand: true,
                                          builder: (context) =>
                                              const WorkoutDetailsView());
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WorkoutInfoCardWidget extends StatelessWidget {
  const WorkoutInfoCardWidget({
    super.key,
    required String leading,
    required String title,
    required String subTitle,
    required Color color,
  })  : _leading = leading,
        _title = title,
        _subTitle = subTitle,
        _color = color;

  final String _leading, _title, _subTitle;
  final Color _color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40.pv),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        border: Border.all(color: AppColors.grayColor),
        borderRadius: BorderRadius.circular(42.r),
      ),
      child: Column(
        children: [
          TextViewWidget(
            _leading,
            align: TextAlign.center,
            style: textTheme.labelLarge,
          ),
          SizedBox(height: 20.h),
          TextViewWidget(
            _title,
            align: TextAlign.center,
            style: textTheme.displaySmall
                ?.copyWith(fontWeight: FontWeight.w900, color: _color),
          ),
          SizedBox(height: 20.h),
          TextViewWidget(
            _subTitle,
            align: TextAlign.center,
            style: textTheme.titleSmall?.copyWith(color: _color),
          ),
        ],
      ),
    );
  }
}

class SelectedWorkoutTypeWidget extends StatelessWidget {
  const SelectedWorkoutTypeWidget({
    super.key,
    required String icon,
    required String title,
  })  : _icon = icon,
        _title = title;

  final String _icon, _title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 72.pv),
      decoration: BoxDecoration(
        color: AppColors.grayColor,
        borderRadius: BorderRadius.circular(42.r),
      ),
      child: Column(
        children: [
          SvgPictureAssetWidget(_icon, size: 82.w),
          SizedBox(height: 32.h),
          TextViewWidget(
            _title,
            align: TextAlign.center,
            style: textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
