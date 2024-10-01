import '../../../../core/constants/exports.dart';

class AddOwnerAndTrainerView extends StatelessWidget {
  const AddOwnerAndTrainerView({super.key, AddOwnerTrainerArgs? args})
      : _args = args;

  final AddOwnerTrainerArgs? _args;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Add owner/trainer'),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 92.ph),
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: _args?.isUserAdded == true ? 30.h : 252.h),
              SvgPictureAssetWidget(
                ImagesResource.profileAddIcon,
                size: 342.w,
              ).center(),
              SizedBox(height: 106.h),
              TextViewWidget(
                'Add owner/trainer',
                style: textTheme.displayLarge,
              ).center(),
              SizedBox(height: 66.h),
              TextViewWidget(
                'Everyone who works with the Horse can have a different role depending on what they need to work on.',
                align: TextAlign.center,
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ).center(),
              Container(
                margin: EdgeInsets.only(
                    top: _args?.isUserAdded == true ? 80.h : 1080.ph),
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
              Visibility(
                visible: _args?.isUserAdded ?? false,
                child: Padding(
                  padding: EdgeInsets.only(top: 142.pv, bottom: 80.pv),
                  child: TextViewWidget(
                    'Owners & Trainers',
                    style: textTheme.headlineMedium?.copyWith(
                      fontSize: 62.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: _args?.isUserAdded ?? false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...List.generate(
                        10,
                        (index) => UserProfileCardWidget(
                              margin: EdgeInsets.only(bottom: 40.pv),
                              leading: ConstantsResource.profileUrl,
                              title: 'Kamran Khan',
                              subTitle: 'Owner & Trainer',
                              trailing: SvgPictureAssetWidget(
                                      ImagesResource.editIcon,
                                      size: 86.w)
                                  .onTap(() => context.pushNamed(
                                      RouteNames.roleOwnerOrTrainerView,
                                      arguments: AddOwnerTrainerArgs(
                                          isEditOwnerTrainer: true))),
                            )),
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
