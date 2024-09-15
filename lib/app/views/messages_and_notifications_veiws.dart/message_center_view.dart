import '../../../core/constants/exports.dart';

class MessageCenterView extends StatelessWidget {
  const MessageCenterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Message Center'),
      body: Column(
        children: [
          const MessageCenterSelectableCardWidget(),
          SizedBox(height: 32.h),
          Flexible(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 92.ph, vertical: 80.pv),
              itemCount: 10,
              itemBuilder: (context, index) => const MessageCenterCardWidget(),
              separatorBuilder: (context, index) => SizedBox(height: 48.h),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        child: SvgPictureAssetWidget(ImagesResource.chatIcon, size: 92.w),
        onPressed: () {},
      ),
    );
  }
}
