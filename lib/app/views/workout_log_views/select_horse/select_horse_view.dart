import '../../../../core/constants/exports.dart';

class SelectHorseView extends StatelessWidget {
  const SelectHorseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Select Horses'),
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
                    padding: EdgeInsets.symmetric(vertical: 120.pv),
                    child: TextViewWidget(
                      'Select Horses to show',
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
                          SelectableOptionCardWidget(
                        selectableOptionCardModel: SelectableOptionCardModel(
                          icon: ConstantsResource.horseUrl,
                          title: 'Horse Name',
                          subTitle: 'Last workout: Today with Mari Alma',
                          isSelected: index == 0 ? true : false,
                          isNetworkImg: true,
                          onTap: () {},
                        ),
                      ),
                    ),
                  ),
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
            margin: EdgeInsets.symmetric(horizontal: 96.ph, vertical: 72.pv),
            btnText: 'Show',
            onTap: () => context.pushNamed(RouteNames.workoutDetailsView),
          )
        ],
      ),
    );
  }
}
