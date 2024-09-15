import '../../../../core/constants/exports.dart';

class MessageCenterCardWidget extends StatelessWidget {
  const MessageCenterCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 54.ph, vertical: 54.pv),
      decoration: BoxDecoration(
        color: AppColors.grayColor,
        borderRadius: BorderRadius.circular(38.r),
      ),
      child: Row(
        children: [
          ClipOval(
            child: CachedNetworkImageWidget(
              imageUrl: ConstantsResource.profileUrl,
              size: 132.w,
            ),
          ),
          SizedBox(width: 52.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: TextViewWidget(
                        'Austin Swanson',
                        style: textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(width: 24.w),
                    TextViewWidget(
                      '11:20',
                      style: textTheme.labelLarge,
                    ),
                  ],
                ),
                SizedBox(height: 18.h),
                Row(
                  children: [
                    Flexible(
                      child: TextViewWidget(
                        'Sure, message me when you have an message me when you have an',
                        style: textTheme.titleMedium,
                        isEllipsis: true,
                        maxLines: 1,
                      ),
                    ),
                    Badge.count(
                      count: 3,
                      backgroundColor: AppColors.primaryColor,
                      textStyle: textTheme.labelLarge,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
