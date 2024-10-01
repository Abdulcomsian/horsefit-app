import '../../../../core/constants/exports.dart';

class IntervalSettingsView extends StatefulWidget {
  const IntervalSettingsView({super.key});

  @override
  State<IntervalSettingsView> createState() => _IntervalSettingsViewState();
}

class _IntervalSettingsViewState extends State<IntervalSettingsView> {
  int _sets = 5;
  int _intervalMin = 5;
  int _intervalSec = 30;
  int _restMin = 5;
  int _restSec = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Interval Settings'),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 92.ph, vertical: 56.pv),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 132.ph, vertical: 62.pv),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: AppColors.greenColor.withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(62.r),
                ),
                child: Column(
                  children: [
                    TextViewWidget(
                      'Interval',
                      style: textTheme.titleLarge
                          ?.copyWith(color: AppColors.greenColor),
                    ),
                    SizedBox(height: 40.h),
                    Row(
                      children: [
                        Expanded(
                          child: NumberSliderCardWidget(
                            value: _intervalMin,
                            trailing: 'Min',
                            onChanged: (intervalMin) =>
                                setState(() => _intervalMin = intervalMin),
                          ),
                        ),
                        Expanded(
                          child: NumberSliderCardWidget(
                            value: _intervalSec,
                            trailing: 'Sec',
                            onChanged: (intervalSec) =>
                                setState(() => _intervalSec = intervalSec),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 66.h),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 132.ph, vertical: 62.pv),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: AppColors.orangeColor.withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(62.r),
                ),
                child: Column(
                  children: [
                    TextViewWidget(
                      'Rest',
                      style: textTheme.titleLarge
                          ?.copyWith(color: AppColors.darkOrangeColor),
                    ),
                    SizedBox(height: 40.h),
                    Row(
                      children: [
                        Expanded(
                          child: NumberSliderCardWidget(
                            value: _restMin,
                            trailing: 'Min',
                            onChanged: (restMin) =>
                                setState(() => _restMin = restMin),
                          ),
                        ),
                        Expanded(
                          child: NumberSliderCardWidget(
                            value: _restSec,
                            trailing: 'Sec',
                            onChanged: (restSec) =>
                                setState(() => _restSec = restSec),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 66.h),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 132.ph, vertical: 62.pv),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.grayColor),
                  borderRadius: BorderRadius.circular(62.r),
                ),
                child: NumberSliderCardWidget(
                  value: _sets,
                  trailing: 'Sets',
                  onChanged: (sets) => setState(() => _sets = sets),
                ),
              ),
              SizedBox(height: 102.h),
              const TotalWorkoutTimeCardWidget(),
            ],
          ),
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
                  onTap: () =>
                      context.pushNamed(RouteNames.intervalSettingsSummaryView),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
