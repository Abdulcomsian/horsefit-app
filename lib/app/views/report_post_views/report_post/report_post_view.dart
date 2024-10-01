import '../../../../core/constants/exports.dart';

class ReportPostView extends StatelessWidget {
  const ReportPostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Report This Post',
        isShowLeading: false,
        elevation: 0.1,
        actions: [
          IconButton(
              padding: EdgeInsets.only(left: 92.ph, right: 92.ph),
              onPressed: () => context.pop(),
              icon: Icon(
                Icons.close,
                color: AppColors.darkColor,
                size: 92.w,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 92.ph, vertical: 92.pv),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 82.ph),
              child: TextViewWidget(
                'Select an action',
                style: textTheme.headlineMedium
                    ?.copyWith(fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 90.h),
            const ReportTypeCardWidget(
                    text: 'Provide feedback to change the feed')
                .onTap(() => context.pushNamed(RouteNames.feedBackView)),
            SizedBox(height: 36.h),
            const ReportTypeCardWidget(text: 'Report content for review')
                .onTap(() => context.pushNamed(RouteNames.reportReasonsView)),
          ],
        ),
      ),
    );
  }
}

class ReportTypeCardWidget extends StatelessWidget {
  const ReportTypeCardWidget({super.key, required String text}) : _text = text;

  final String _text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 84.ph, vertical: 102.pv),
      decoration: BoxDecoration(
        color: AppColors.grayColor,
        borderRadius: BorderRadius.circular(66.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextViewWidget(
            _text,
            style:
                textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w800),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: AppColors.darkColor,
            size: 86.w,
          ),
        ],
      ),
    );
  }
}
