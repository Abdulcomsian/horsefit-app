import '../../../../core/constants/exports.dart';

class FeedBackView extends StatelessWidget {
  const FeedBackView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReportPostBloc, ReportPostState>(
      builder: (context, state) {
        final isFeedBackSelected = state.feedBack != null;
        return Scaffold(
          appBar: AppBarWidget(
            title: 'Don`t want to see this',
            elevation: 0.1,
            actions: [
              IconButton(
                  padding: EdgeInsets.only(left: 92.ph, right: 92.ph),
                  onPressed: () => context.pop(),
                  icon: Icon(
                    Icons.close,
                    color: AppColors.darkColor,
                    size: 92.w,
                  ))
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 92.ph),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 84.ph, top: 92.pv),
                  child: TextViewWidget(
                    'Tell us why to help us improving the feed.',
                    align: TextAlign.center,
                    style: textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 148.h),
                ...List.generate(
                  state.feedBackOptions.length,
                  (index) => Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 82.ph, vertical: 86.pv),
                    margin: EdgeInsets.only(bottom: 36.pv),
                    decoration: BoxDecoration(
                      color: AppColors.grayColor,
                      borderRadius: BorderRadius.circular(66.r),
                    ),
                    child: Row(
                      children: [
                        RadioWidget(
                            isSelected:
                                state.feedBack == state.feedBackOptions[index]
                                    ? true
                                    : false),
                        SizedBox(width: 70.w),
                        TextViewWidget(
                          state.feedBackOptions[index],
                          style: textTheme.titleLarge,
                        )
                      ],
                    ),
                  ).onTap(() => context.read<ReportPostBloc>().add(
                      ReportPostEvent.selectFeedBackOption(
                          feedBack: state.feedBackOptions[index]))),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ButtonWidget(
                margin: EdgeInsets.fromLTRB(92.ph, 32.pv, 92.ph, 102.pv),
                btnText: 'Submit',
                color: !isFeedBackSelected ? AppColors.grayColor : null,
                textColor: !isFeedBackSelected
                    ? AppColors.darkColor.withOpacity(0.12)
                    : null,
                onTap: () {
                  if (isFeedBackSelected) {
                    context.pushReplacementNamed(
                      RouteNames.reportFeedBackSuccessView,
                      arguments: ReportArgs(isFromFeedback: true),
                    );
                  }
                },
              )
            ],
          ),
        );
      },
    );
  }
}
