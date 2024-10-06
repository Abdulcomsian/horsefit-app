import '../../../../core/constants/exports.dart';

class ReportReasonSummaryView extends StatelessWidget {
  const ReportReasonSummaryView({super.key, required ReportArgs args})
      : _args = args;

  final ReportArgs _args;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Report this Post',
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
        padding: EdgeInsets.symmetric(horizontal: 92.ph, vertical: 90.pv),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextViewWidget(
              'You have selected',
              style: textTheme.headlineMedium
                  ?.copyWith(fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 90.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 48.ph, vertical: 36.pv),
              decoration: BoxDecoration(
                color: AppColors.grayColor,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextViewWidget(
                    _args.reportPostReason?.title ?? '',
                    style: textTheme.headlineSmall
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 24.h),
                  TextViewWidget(
                    _args.reportPostReason?.reason ?? '',
                    style: textTheme.titleLarge
                        ?.copyWith(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ButtonWidget(
            margin: EdgeInsets.fromLTRB(92.ph, 32.pv, 92.ph, 102.pv),
            btnText: 'Submit Report',
            onTap: () {
              ///! TODO Improve this section
              context.pop();
              context
                  .pushReplacementNamed(RouteNames.reportFeedBackSuccessView);
            },
          )
        ],
      ),
    );
  }
}
