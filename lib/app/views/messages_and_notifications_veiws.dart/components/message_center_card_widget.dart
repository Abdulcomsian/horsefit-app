import '../../../../core/constants/exports.dart';

class MessageCenterCardWidget extends StatelessWidget {
  const MessageCenterCardWidget(
      {super.key, required MessageCenterTab messageCenterTab})
      : _messageCenterTab = messageCenterTab;

  final MessageCenterTab _messageCenterTab;

  @override
  Widget build(BuildContext context) {
    final chat = _messageCenterTab == MessageCenterTab.chat;
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
                    Expanded(
                      child: TextViewWidget(
                        chat
                            ? 'Sure, message me when you have an message me when you have an'
                            : 'Request: Invitation to be trainer...',
                        style: textTheme.titleMedium,
                        isEllipsis: true,
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(width: 24.w),
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
    ).onTap(() {
      if (chat) {
        context.pushNamed(RouteNames.chatView);
      } else {
        locator<DialogueUtils>().customDialog(
          context,
          backgroundColor: AppColors.grayColor,
          titleWidget: Row(
            children: [
              ClipOval(
                child: CachedNetworkImageWidget(
                    imageUrl: ConstantsResource.profileUrl, size: 160.w),
              ),
              SizedBox(width: 58.w),
              Column(
                children: [
                  TextViewWidget(
                    'Request from',
                    style: textTheme.headlineSmall
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  TextViewWidget(
                    'Kamran Khan',
                    style: textTheme.headlineSmall,
                  ),
                ],
              ),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextViewWidget(
                'Kamran Khan have invited you to be the trainer for:',
                align: TextAlign.center,
                style: textTheme.headlineSmall
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 132.h),
              ClipOval(
                  child: CachedNetworkImageWidget(
                imageUrl: ConstantsResource.horseUrl,
                size: 364.w,
              )),
              SizedBox(height: 66.h),
              TextViewWidget(
                'Maksi Royale',
                style: textTheme.headlineLarge,
              ),
            ],
          ),

          ///! if you pass this parameter true make sure to pass the button text and ontap handler correctly
          toggleButtonsOrder: true,
          closeBtnText: 'Accept',
          doneBtnText: 'Decline',
        );
      }
    });
  }
}
