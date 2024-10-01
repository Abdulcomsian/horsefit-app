import '../../../../core/constants/exports.dart';

class TotalWorkoutTimeCardWidget extends StatelessWidget {
  const TotalWorkoutTimeCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 92.ph, vertical: 92.pv),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grayColor),
        borderRadius: BorderRadius.circular(62.r),
      ),
      child: Column(
        children: [
          TextViewWidget(
            'Total Workout Time',
            style:
                textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 12.h),
          TextViewWidget(
            '00:39:00',
            style: textTheme.displayMedium?.copyWith(
              fontSize: 90.sp,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
