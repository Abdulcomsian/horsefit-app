import '../../../../core/constants/exports.dart';

class AddOwnerAndTrainerView extends StatelessWidget {
  const AddOwnerAndTrainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Add owner/trainer'),
      body: SizedBox.expand(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 92.ph),
          child: Column(
            children: [
              SizedBox(height: 252.h),
              SvgPictureAssetWidget(
                ImagesResource.profileAddIcon,
                size: 342.w,
              ),
              SizedBox(height: 106.h),
              TextViewWidget(
                'Add owner/trainer',
                style: textTheme.displayLarge,
              ),
              SizedBox(height: 66.h),
              TextViewWidget(
                'Everyone who works with the Horse can have a different role depending on what they need to work on.',
                align: TextAlign.center,
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 1080.ph),
                padding:
                    EdgeInsets.symmetric(horizontal: 102.ph, vertical: 62.pv),
                decoration: BoxDecoration(
                  color: AppColors.orangeColor.withOpacity(0.04),
                  border: Border.all(
                      color: AppColors.orangeColor.withOpacity(0.12),
                      width: 2.w),
                  borderRadius: BorderRadius.circular(78.r),
                ),
                child: Row(
                  children: [
                    SvgPictureAssetWidget(
                      ImagesResource.infoIcon,
                      size: 86.w,
                      isApplyColorFilter: true,
                      color: AppColors.orangeColor,
                    ),
                    SizedBox(width: 72.w),
                    Expanded(
                        child: RichText(
                            text: TextSpan(
                                text:
                                    'In order to add a person with a role, that person must be a ',
                                style: textTheme.titleMedium,
                                children: [
                          TextSpan(
                            text:
                                'registered user of ${ConstantsResource.appName}.',
                            style: textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.w600),
                          )
                        ]))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ButtonWidget(
            margin: EdgeInsets.symmetric(horizontal: 94.ph, vertical: 62.pv),
            padding: EdgeInsets.symmetric(vertical: 66.pv),
            icon: SvgPictureAssetWidget(
              ImagesResource.profileAddOutlinedIcon,
              size: 86.w,
            ),
            btnText: 'Add owner/trainer',
            onTap: () =>
                context.pushNamed(RouteNames.searchOwnerAndTrainerView),
          ),
        ],
      ),
    );
  }
}
