import '../../../../core/constants/exports.dart';

class StatisticsView extends StatelessWidget {
  const StatisticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Statistics'),
      body: Center(
        child: Text(
          'Under Development',
          style: textTheme.displaySmall,
        ),
      ),
    );
  }
}
