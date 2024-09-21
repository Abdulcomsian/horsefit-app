import '../../../../core/constants/exports.dart';

class RoleOwnerOrTrainerView extends StatelessWidget {
  const RoleOwnerOrTrainerView({super.key, AddOwnerTrainerArgs? args})
      : _args = args;

  final AddOwnerTrainerArgs? _args;

  @override
  Widget build(BuildContext context) {
    final isEditOwnerTrainer = _args?.isEditOwnerTrainer ?? false;
    return Scaffold(
      appBar: const AppBarWidget(title: 'Add owner/trainer'),
      body: SizedBox.expand(
          child: Column(
        children: [
          SizedBox(height: 172.h),
          ClipOval(
            child: CachedNetworkImageWidget(
              imageUrl: ConstantsResource.profileUrl,
              size: 400.w,
            ),
          ),
          SizedBox(height: 52.h),
          TextViewWidget(
            'Kamran Khan',
            style:
                textTheme.displayMedium?.copyWith(fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 242.h),
          ...List.generate(
              ownerTrainerData.length,
              (index) => BlocBuilder<AddOwnerTrainerBloc, AddOwnerTrainerState>(
                    builder: (context, state) {
                      return RoleCardWidget(
                        ownerTrainerRoleModel: ownerTrainerData[index],
                        isSelected: ownerTrainerData[index].role == state.role,
                      ).onTap(() => context.read<AddOwnerTrainerBloc>().add(
                          AddOwnerTrainerEvent.selectRole(
                              role: ownerTrainerData[index].role)));
                    },
                  )),
          Visibility(visible: isEditOwnerTrainer, child: const Spacer()),
          Visibility(
            visible: isEditOwnerTrainer,
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.symmetric(horizontal: 24.ph, vertical: 24.pv),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPictureAssetWidget(
                    ImagesResource.trashIcon,
                    size: 86.w,
                  ),
                  SizedBox(width: 24.w),
                  TextViewWidget(
                    'Remove User',
                    style: textTheme.headlineSmall
                        ?.copyWith(fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ).onTap(() {
              locator<DialogueUtils>()
                  .customDialog(
                context,
                title: 'Are you sure you want to remove this person?',
                closeBtnText: 'Yes',
                closeBtnColor: AppColors.redColor,
                doneBtnText: 'No',
                doneBtnBorderColor: AppColors.grayColor,
              )
                  .then((result) {
                if (result) return;

                ///! TODO Delete User
              });
            }),
          ),
        ],
      )),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ButtonWidget(
            margin: EdgeInsets.symmetric(horizontal: 94.ph, vertical: 62.pv),
            padding: EdgeInsets.symmetric(vertical: 66.pv),
            icon: !isEditOwnerTrainer
                ? SvgPictureAssetWidget(
                    ImagesResource.profileAddOutlinedIcon,
                    size: 86.w,
                  )
                : null,
            btnText: isEditOwnerTrainer ? 'Save' : 'Add',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
