import '../../../../core/constants/exports.dart';

class WorkoutSetupView extends StatelessWidget {
  const WorkoutSetupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Workout Setup'),
      body: SizedBox.expand(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 148.ph),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80.h),
              TextViewWidget(
                'I want to end this Workout and\nstart over',
                align: TextAlign.center,
                style: textTheme.headlineSmall
                    ?.copyWith(fontWeight: FontWeight.w500),
              ).center(),
              Container(
                margin: EdgeInsets.only(top: 32.ph, bottom: 168.pv),
                padding:
                    EdgeInsets.symmetric(horizontal: 72.ph, vertical: 72.pv),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.grayColor),
                ),
                child:
                    SvgPictureAssetWidget(ImagesResource.closeIcon, size: 36.w),
              ).onTap(() {
                context.pop();
                context.pop();
              }).center(),
              TextViewWidget(
                'Workout Settings',
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: AppColors.primaryColor,
                ),
              ),
              TextViewWidget(
                'My Devices',
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
