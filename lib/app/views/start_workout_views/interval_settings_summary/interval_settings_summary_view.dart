import '../../../../core/constants/exports.dart';

class IntervalSettingsSummaryView extends StatelessWidget {
  const IntervalSettingsSummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    final intervalSummary = [
      IntervalSettingsModel(
        title: 'Interval',
        titleColor: AppColors.greenColor,
        time: '04:39',
      ),
      IntervalSettingsModel(
        title: 'Rest',
        titleColor: AppColors.darkOrangeColor,
        time: '04:39',
      ),
      IntervalSettingsModel(
        title: 'Sets',
        titleColor: AppColors.darkColor,
        time: '6',
      ),
    ];
    return Scaffold(
      appBar: const AppBarWidget(title: 'Interval Settings'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 74.ph, vertical: 94.pv),
        child: Column(
          children: [
            const HorseProfileTileWidget(),
            SizedBox(height: 146.h),
            ...List.generate(
                intervalSummary.length,
                (index) => Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 92.ph, vertical: 92.pv),
                      margin: EdgeInsets.only(bottom: 64.pv),
                      decoration: BoxDecoration(
                        color: AppColors.grayColor,
                        borderRadius: BorderRadius.circular(62.r),
                      ),
                      child: Row(
                        children: [
                          TextViewWidget(
                            intervalSummary[index].title,
                            style: textTheme.titleLarge?.copyWith(
                                color: intervalSummary[index].titleColor),
                          ),
                          SizedBox(width: 24.w),
                          Expanded(
                            child: TextViewWidget(
                              intervalSummary[index].time,
                              style: textTheme.displayMedium
                                  ?.copyWith(fontWeight: FontWeight.w900),
                            ).center(),
                          ),
                          SizedBox(width: 24.w),
                          Icon(Icons.arrow_forward_ios, size: 72.w),
                        ],
                      ),
                    )),
            const TotalWorkoutTimeCardWidget(),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 74.ph, vertical: 80.pv),
            child: Row(
              children: [
                Expanded(
                    child: ButtonWidget(
                  btnText: 'Previous',
                  color: Colors.transparent,
                  textColor: AppColors.darkColor,
                  onTap: () => context.pop(),
                )),
                Expanded(
                    child: ButtonWidget(
                  icon: SvgPictureAssetWidget(
                    ImagesResource.arrowForwardIcon,
                    size: 62.w,
                  ),
                  isShowIconLeading: false,
                  btnText: 'Next',
                  onTap: () => context.pushNamed(RouteNames.summaryView),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
