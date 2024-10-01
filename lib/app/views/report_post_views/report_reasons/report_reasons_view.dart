import '../../../../core/constants/exports.dart';

class ReportReasonsView extends StatelessWidget {
  const ReportReasonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReportPostBloc, ReportPostState>(
      builder: (context, state) {
        final isReportSelected = state.report != null;
        return Scaffold(
          appBar: AppBarWidget(
            title: 'Report This Post',
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
            padding: EdgeInsets.symmetric(horizontal: 92.ph, vertical: 90.pv),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextViewWidget(
                  'Select a reason',
                  style: textTheme.headlineMedium
                      ?.copyWith(fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 194.h),
                Wrap(
                  spacing: 60.w,
                  runSpacing: 60.h,
                  children: [
                    ...List.generate(
                      state.reportPostReasons.length,
                      (index) => Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 72.ph, vertical: 32.pv),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(
                              width: 6.w,
                              color:
                                  state.report == state.reportPostReasons[index]
                                      ? AppColors.primaryColor
                                      : AppColors.grayColor),
                        ),
                        child: TextViewWidget(
                          state.reportPostReasons[index].title,
                          style: textTheme.labelLarge,
                        ),
                      ).onTap(() => context.read<ReportPostBloc>().add(
                          ReportPostEvent.selectReportOption(
                              report: state.reportPostReasons[index]))),
                    )
                  ],
                )
              ],
            ),
          ),
          bottomNavigationBar: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ButtonWidget(
                margin: EdgeInsets.fromLTRB(92.ph, 32.pv, 92.ph, 102.pv),
                btnText: 'Submit',
                color: !isReportSelected ? AppColors.grayColor : null,
                textColor: !isReportSelected
                    ? AppColors.darkColor.withOpacity(0.12)
                    : null,
                onTap: () {
                  if (isReportSelected) {
                    context.pushNamed(RouteNames.reportReasonSummaryView,
                        arguments: ReportArgs(
                            reportPostReason: ReportPostReasonsModel(
                          title: state.report?.title ?? '',
                          reason: state.report?.reason ?? '',
                        )));
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
