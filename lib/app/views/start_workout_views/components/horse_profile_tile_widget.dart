import '../../../../core/constants/exports.dart';

class HorseProfileTileWidget extends StatelessWidget {
  const HorseProfileTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 62.ph, vertical: 48.pv),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(192.r),
        border: Border.all(color: AppColors.grayColor),
      ),
      child: Row(
        children: [
          ClipOval(
            child: CachedNetworkImageWidget(
                imageUrl: ConstantsResource.horseUrl, size: 246.w),
          ),
          SizedBox(width: 62.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextViewWidget(
                'Maksi Royale',
                style: textTheme.headlineLarge,
              ),
              SizedBox(height: 28.h),
              TextViewWidget(
                'Last workout: Today with Mari Alma',
                style:
                    textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }
}
