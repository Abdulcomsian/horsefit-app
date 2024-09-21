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
                          const HorseWorkoutCardWidget(),
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
