import '../../../core/constants/exports.dart';

class SelectFriendsView extends StatelessWidget {
  const SelectFriendsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Send'),
      body: SizedBox.expand(
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 152.h),
                  TextViewWidget(
                    'Your Friends',
                    style: textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w900,
                      fontSize: 90.sp,
                    ),
                  ),
                  SizedBox(height: 66.h),
                  TextViewWidget(
                    'Select who will get your message',
                    style: textTheme.titleLarge
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 120.h),
                  ListView.builder(
                    itemCount: 10,
                    padding: EdgeInsets.symmetric(
                        horizontal: 98.ph, vertical: 62.pv),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.symmetric(
                          horizontal: 54.ph, vertical: 54.pv),
                      child: Row(
                        children: [
                          ClipOval(
                            child: CachedNetworkImageWidget(
                              imageUrl: ConstantsResource.profileUrl,
                              size: 132.w,
                            ),
                          ),
                          SizedBox(width: 54.w),
                          Expanded(
                            child: TextViewWidget(
                              'Kamran Khan',
                              style: textTheme.titleLarge,
                            ),
                          ),
                          SizedBox(width: 24.w),
                          RadioWidget(isSelected: index == 0 ? true : false),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ButtonWidget(
            btnText: 'Send',
            margin: EdgeInsets.only(
                left: 92.ph, right: 92.ph, top: 32.pv, bottom: 52.pv),
            onTap: () {
              context.pop();
              context.pop();
              context.pushNamed(RouteNames.messageCenterView);
            },
          )
        ],
      ),
    );
  }
}
