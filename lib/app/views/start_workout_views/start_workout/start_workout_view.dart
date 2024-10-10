import '../../../../core/constants/exports.dart';

class StartWorkOutView extends StatelessWidget {
  const StartWorkOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Start Workout'),
      body: SizedBox.expand(
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 92.ph, vertical: 40.pv),
                    padding: EdgeInsets.symmetric(
                        horizontal: 82.ph, vertical: 62.pv),
                    decoration: BoxDecoration(
                      color: AppColors.grayColor,
                      borderRadius: BorderRadius.circular(62.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: TextViewWidget(
                            'Don\'t forget to share your workouts',
                            style: textTheme.titleSmall
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 24.ph),
                          padding: EdgeInsets.symmetric(
                              horizontal: 40.ph, vertical: 40.pv),
                          decoration: const BoxDecoration(
                            color: AppColors.primaryColor,
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: TextViewWidget(
                            '2',
                            style: textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppColors.whiteColor),
                          ),
                        )
                      ],
                    ),
                  ).onTap(() => context.pushNamed(RouteNames.shareWorkoutView)),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 152.pv),
                    child: TextViewWidget(
                      'Select your \nhorse to start',
                      style: textTheme.displayLarge,
                    ),
                  ),
                  Flexible(
                    child: ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 92.ph),
                      itemBuilder: (context, index) =>
                          const HorseWorkoutCardWidget().onTap(() =>
                              context.pushNamed(RouteNames.selectedHorseView)),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
