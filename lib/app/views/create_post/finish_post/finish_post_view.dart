import '../../../../core/constants/exports.dart';

class FinishPostView extends StatelessWidget {
  const FinishPostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Finish'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 92.ph, vertical: 92.pv),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            TextViewWidget(
              'Soon finished posting, but first...',
              align: TextAlign.center,
              style:
                  textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 42.h),
            TextViewWidget(
              'Who can see your post?',
              align: TextAlign.center,
              style: textTheme.displayMedium
                  ?.copyWith(fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 66.h),
            TextViewWidget(
              'Your post will be shown in News Feed, on your profile and in search results.',
              align: TextAlign.center,
              style:
                  textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 142.h),
            ...List.generate(
              allPostPrivacy.length,
              (index) => BlocBuilder<CreatePostBloc, CreatePostState>(
                builder: (context, state) {
                  return SelectableOptionCardWidget(
                    selectableOptionCardModel: SelectableOptionCardModel(
                      icon: allPostPrivacy[index].icon,
                      title: allPostPrivacy[index].title,
                      subTitle: allPostPrivacy[index].subTitle,
                      isSelected: state.postPrivacy ==
                          allPostPrivacy[index].postPrivacy,
                      onTap: () {
                        logger.i('Update Post Privacy');
                        context
                            .read<CreatePostBloc>()
                            .add(CreatePostEvent.togglePostPrivacy(
                              postPrivacy: allPostPrivacy[index].postPrivacy ??
                                  PostPrivacy.public,
                            ));
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 88.h),
            TextViewWidget(
              'Which feed(s) will you post to?',
              align: TextAlign.center,
              style: textTheme.displayMedium
                  ?.copyWith(fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 72.h),
            ...List.generate(
              4,
              (index) => Container(
                margin: EdgeInsets.only(bottom: index == 3 ? 0.0 : 82.pv),
                child: Row(
                  children: [
                    CachedNetworkImageWidget(
                      imageUrl:
                          'https://images.unsplash.com/uploads/14136148007774dc82563/ce92d553?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG9yc2V8ZW58MHx8MHx8fDA%3D',
                      size: 142.w,
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    SizedBox(width: 40.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextViewWidget(
                            'Kamran Khan',
                            style: textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.w900),
                          ),
                          TextViewWidget(
                            'Last workout: 8 days ago with Stein Jo...',
                            style: textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 42.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 24.w),
                    const RadioWidget(isSelected: true),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ButtonWidget(
            btnText: 'Post',
            margin: EdgeInsets.symmetric(horizontal: 92.ph, vertical: 62.pv),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
