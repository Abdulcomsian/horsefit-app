import 'package:horse_fit/app/widgets/profile_stats_card_widget.dart';

import '../../../../core/constants/exports.dart';

class HorseProfileView extends StatelessWidget {
  const HorseProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            UserProfileCardWidget(
              profileImgUrl: ConstantsResource.horseUrl,
              bannerImgUrl:
                  'https://plus.unsplash.com/premium_photo-1667595645105-469e12563830?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aG9yc2V8ZW58MHx8MHx8fDA%3D',
              isShowOnlyProfile: true,
              widget:
                  SvgPictureAssetWidget(ImagesResource.infoIcon, size: 98.w),
            ),
            SizedBox(height: 32.h),
            TextViewWidget(
              'Maksi Royale',
              style: textTheme.displayMedium
                  ?.copyWith(fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 20.h),
            TextViewWidget(
              '3 year / Warmblood trotter. Stallion',
              style:
                  textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 36.h),
            const ProfileStatsCardWidget(),
            SizedBox(height: 92.h),
            Row(
              children: [
                Expanded(
                    child: ButtonWidget(
                  padding: EdgeInsets.symmetric(vertical: 56.pv),
                  margin: EdgeInsets.only(left: 88.ph),
                  icon: const RadioWidget(
                      isSelected: true, color: Color(0xFF69CFDF)),
                  btnText: 'Following',
                  onTap: () {},
                )),
                SizedBox(width: 52.w),
                Expanded(
                    child: ButtonWidget(
                  padding: EdgeInsets.symmetric(vertical: 48.pv),
                  margin: EdgeInsets.only(right: 88.ph),
                  isShowBorder: true,
                  textColor: AppColors.darkColor,
                  icon: SvgPictureAssetWidget(
                    ImagesResource.statistics1Icon,
                    size: 86.w,
                  ),
                  btnText: 'Statistics',
                  onTap: () {},
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
