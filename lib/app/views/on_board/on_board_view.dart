import '../../../core/constants/exports.dart';

class OnBoardView extends StatelessWidget {
  const OnBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      ImagesResource.onBoardImg,
                      fit: BoxFit.cover,
                    ),
                    SvgPictureAssetWidget(
                      ImagesResource.whiteLogoIcon,
                      width: 712.w,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 1677.h,
              padding:
                  EdgeInsets.symmetric(horizontal: 173.ph, vertical: 180.pv),
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100.r),
                    topRight: Radius.circular(100.r),
                  )),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Join the best fitness & social platform for ',
                      style: textTheme.displayLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 110.sp,
                      ),
                      children: [
                        TextSpan(
                          text: 'horse lovers',
                          style: textTheme.displayLarge?.copyWith(
                            fontWeight: FontWeight.w800,
                            fontSize: 110.sp,
                            color: Theme.of(context).primaryColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  ButtonWidget(
                    btnText: 'Sign Up',
                    margin: EdgeInsets.only(top: 180.ph),
                    textColor: AppColors.whiteColor,
                    onTap: () => context.pushNamed(RouteNames.signUpView),
                  ),
                  ButtonWidget(
                    btnText: 'Log In',
                    margin: EdgeInsets.only(top: 60.ph),
                    isShowBorder: true,
                    textColor: AppColors.darkColor,
                    onTap: () =>
                        context.pushNamedAndRemoveUntil(RouteNames.loginView),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
