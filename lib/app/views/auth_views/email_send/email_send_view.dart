import '../../../../core/constants/exports.dart';

class EmailSendView extends StatelessWidget {
  const EmailSendView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Lost Password', isShowLeading: false),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 122.ph, vertical: 152.pv),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 702.h),
            SvgPictureAssetWidget(ImagesResource.emojiNormalIcon, size: 327.w),
            SizedBox(height: 160.h),
            TextViewWidget(
              'Check your email',
              style: textTheme.displayLarge?.copyWith(fontSize: 100.sp),
            ),
            SizedBox(height: 66.h),
            TextViewWidget(
              'We sent a password reset link to your email.',
              style: textTheme.headlineMedium?.copyWith(fontSize: 62.sp),
            ),
            const Spacer(),
            ButtonWidget(
              btnText: 'Log In',
              onTap: () => context.pushNamed(RouteNames.loginView),
            ),
          ],
        ),
      ),
    );
  }
}
