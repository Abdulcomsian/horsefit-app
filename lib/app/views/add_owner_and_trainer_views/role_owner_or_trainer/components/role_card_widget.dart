import '../../../../../core/constants/exports.dart';

class RoleCardWidget extends StatelessWidget {
  const RoleCardWidget({
    super.key,
    required OwnerTrainerRoleModel ownerTrainerRoleModel,
    required bool isSelected,
  })  : _ownerTrainerRoleModel = ownerTrainerRoleModel,
        _isSelected = isSelected;

  final OwnerTrainerRoleModel _ownerTrainerRoleModel;
  final bool _isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 98.ph, vertical: 40.pv),
      padding: EdgeInsets.symmetric(horizontal: 72.ph, vertical: 76.pv),
      decoration: BoxDecoration(
        color: AppColors.grayColor,
        borderRadius: BorderRadius.circular(64.r),
      ),
      child: Row(
        children: [
          SvgPictureAssetWidget(_ownerTrainerRoleModel.icon, size: 92.w),
          SizedBox(width: 72.w),
          TextViewWidget(_ownerTrainerRoleModel.title,
              style: textTheme.headlineSmall
                  ?.copyWith(fontWeight: FontWeight.w700)),
          const Spacer(),
          RadioWidget(isSelected: _isSelected),
        ],
      ),
    );
  }
}
