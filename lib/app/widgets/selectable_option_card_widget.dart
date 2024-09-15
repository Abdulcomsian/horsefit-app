import '../../core/constants/exports.dart';

class SelectableOptionCardWidget extends StatelessWidget {
  const SelectableOptionCardWidget({
    super.key,
    required SelectableOptionCardModel selectableOptionCardModel,
  }) : _selectableOptionCardModel = selectableOptionCardModel;

  final SelectableOptionCardModel _selectableOptionCardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 84.ph, vertical: 68.pv),
      margin: EdgeInsets.only(bottom: 64.ph),
      decoration: BoxDecoration(
        color: AppColors.grayColor,
        border: _selectableOptionCardModel.isSelected
            ? Border.all(color: AppColors.greenColor, width: 1.4.w)
            : null,
        borderRadius: BorderRadius.circular(62.r),
      ),
      child: Row(
        children: [
          Visibility(
            visible: _selectableOptionCardModel.isNetworkImg == true,
            child: ClipOval(
              child: CachedNetworkImageWidget(
                  imageUrl: _selectableOptionCardModel.icon, size: 142.w),
            ),
          ),
          Visibility(
            visible: _selectableOptionCardModel.isNetworkImg != true,
            child: SvgPictureAssetWidget(_selectableOptionCardModel.icon,
                size: 96.w),
          ),
          SizedBox(width: 26.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextViewWidget(
                  _selectableOptionCardModel.title,
                  style: textTheme.titleLarge,
                ),
                SizedBox(height: 4.h),
                TextViewWidget(
                  _selectableOptionCardModel.subTitle,
                  style: textTheme.titleSmall
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(width: 26.w),
          RadioWidget(isSelected: _selectableOptionCardModel.isSelected),
        ],
      ),
    ).onTap(_selectableOptionCardModel.onTap);
  }
}
