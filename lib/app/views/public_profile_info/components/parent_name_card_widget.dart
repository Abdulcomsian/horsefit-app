import '../../../../core/constants/exports.dart';

class ParentNameCardWidget extends StatelessWidget {
  const ParentNameCardWidget({
    super.key,
    required String title,
    subTitle,
    required VoidCallback onTap,
  })  : _title = title,
        _subTitle = subTitle,
        _onTap = onTap;
  final String _title, _subTitle;
  final VoidCallback _onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: 86.ph, right: 56.ph, top: 56.pv, bottom: 72.pv),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.04),
        border: Border.all(color: AppColors.primaryColor.withOpacity(0.06)),
        borderRadius: BorderRadius.circular(78.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPictureAssetWidget(
            ImagesResource.arrowUpIcon,
            size: 42.w,
          ).topRight(),
          TextViewWidget(
            _title,
            style: textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 12.h),
          TextViewWidget(
            _subTitle,
            style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ).onTap(_onTap);
  }
}
