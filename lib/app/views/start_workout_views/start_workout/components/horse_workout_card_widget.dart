import '../../../../../core/constants/exports.dart';

class HorseWorkoutCardWidget extends StatelessWidget {
  const HorseWorkoutCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 82.ph, vertical: 62.pv),
      margin: EdgeInsets.only(bottom: 72.pv),
      decoration: BoxDecoration(
        color: AppColors.grayColor,
        borderRadius: BorderRadius.circular(62.r),
      ),
      child: Row(
        children: [
          ClipOval(
              child: CachedNetworkImageWidget(
            imageUrl: ConstantsResource.horseUrl,
            size: 142.w,
          )),
          SizedBox(width: 24.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextViewWidget(
                  'Maksi Royale',
                  style: textTheme.titleLarge,
                ),
                TextViewWidget(
                  'Last workout: Today with Mari Alma',
                  style: textTheme.titleSmall
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(width: 24.w),
          SvgPictureAssetWidget(ImagesResource.playIcon, size: 112.w),
        ],
      ),
    );
  }
}
