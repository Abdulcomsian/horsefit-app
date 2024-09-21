import '../../../../../core/constants/exports.dart';

class SearchedUserTileWidget extends StatelessWidget {
  const SearchedUserTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 36.pv),
      padding: EdgeInsets.symmetric(horizontal: 84.ph, vertical: 62.pv),
      decoration: BoxDecoration(
        color: AppColors.grayColor,
        borderRadius: BorderRadius.circular(66.r),
      ),
      child: Row(
        children: [
          ClipOval(
            child: CachedNetworkImageWidget(
              imageUrl: ConstantsResource.profileUrl,
              size: 142.w,
            ),
          ),
          SizedBox(width: 34.w),
          TextViewWidget('Kamran Khan', style: textTheme.titleLarge),
          SizedBox(width: 24.w),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 62.w,
            color: AppColors.darkColor,
          )
        ],
      ),
    );
  }
}
