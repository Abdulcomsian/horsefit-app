import '../../../../core/constants/exports.dart';

class SummaryView extends StatelessWidget {
  const SummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Summary'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 92.ph, vertical: 86.pv),
        child: Column(
          children: [
            WorkoutConfigurationSummaryCardWidget(
              icon: ImagesResource.basicIcon,
              title: 'Interval',
              child: Container(
                margin: EdgeInsets.only(top: 72.pv),
                padding:
                    EdgeInsets.symmetric(horizontal: 40.ph, vertical: 62.pv),
                decoration: BoxDecoration(
                  color: AppColors.grayColor,
                  borderRadius: BorderRadius.circular(48.r),
                ),
                child: Column(
                  children: [
                    const IntervalDetailsWidget(
                        title: 'Warm Up', time: '20:00'),
                    const IntervalDetailsWidget(
                      title: 'Interval',
                      titleColor: AppColors.greenColor,
                      time: '20:00',
                    ),
                    const IntervalDetailsWidget(
                      title: 'Rest',
                      titleColor: AppColors.darkOrangeColor,
                      time: '20:00',
                    ),
                    const IntervalDetailsWidget(title: 'Sets', time: '6'),
                    SizedBox(height: 30.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 74.ph, vertical: 42.pv),
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(48.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextViewWidget(
                                'Total',
                                style: textTheme.titleMedium
                                    ?.copyWith(fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 12.h),
                              TextViewWidget(
                                'Warm up not included',
                                style: textTheme.labelMedium?.copyWith(
                                    color:
                                        AppColors.darkColor.withOpacity(0.6)),
                              ),
                            ],
                          ),
                          SizedBox(width: 24.w),
                          Flexible(
                            child: TextViewWidget('00:39:00',
                                style: textTheme.titleLarge),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 62.h),
            const WorkoutConfigurationSummaryCardWidget(
              icon: ImagesResource.flatIcon,
              title: 'Flat Terrain',
            ),
            SizedBox(height: 62.h),
            const WorkoutConfigurationSummaryCardWidget(
              icon: ImagesResource.normalIcon,
              title: 'Normal Intensity',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ButtonWidget(
            margin: EdgeInsets.symmetric(horizontal: 74.ph, vertical: 82.pv),
            btnText: 'Done',
            onTap: () => context.pushNamed(RouteNames.startWorkoutTimerView),
          )
        ],
      ),
    );
  }
}
