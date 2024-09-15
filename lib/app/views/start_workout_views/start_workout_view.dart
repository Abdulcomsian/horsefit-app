import '../../../core/constants/exports.dart';

class StartWorkOutView extends StatelessWidget {
  const StartWorkOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Start Workout'),
      body: Center(
        child: Text(
          'Under Development',
          style: textTheme.displaySmall,
        ),
      ),
    );
  }
}
