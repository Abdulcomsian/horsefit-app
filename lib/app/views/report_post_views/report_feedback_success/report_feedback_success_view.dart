import '../../../../core/constants/exports.dart';

class ReportFeedbackSuccessView extends StatelessWidget {
  const ReportFeedbackSuccessView({super.key, ReportArgs? args}) : _args = args;

  final ReportArgs? _args;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: '',
        isShowLeading: false,
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
      body: SizedBox.expand(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 92.ph, vertical: 92.pv),
          child: Column(
            children: [
              SizedBox(height: 260.h),
              TextViewWidget(
                'Thank you',
                style: textTheme.displayLarge,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 176.pv),
                child:
                    SvgPictureAssetWidget(ImagesResource.starIcon, size: 200.w),
              ),
              TextViewWidget(
                _args?.isFromFeedback == true
                    ? 'Your feedback is important for us so that the feed can be optimized and more relevant.'
                    : 'We will review your report to us.\n\nIf we need anything else we will contact you.',
                align: TextAlign.center,
                style:
                    textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ButtonWidget(
            margin: EdgeInsets.symmetric(horizontal: 126.ph, vertical: 162.pv),
            isShowBorder: true,
            textColor: AppColors.darkColor,
            btnText: 'Back to Main Feed',
            onTap: () => context.pushNamedAndRemoveUntil(RouteNames.feedView),
          )
        ],
      ),
    );
  }
}
