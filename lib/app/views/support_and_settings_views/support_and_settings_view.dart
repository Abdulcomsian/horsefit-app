import '../../../../core/constants/exports.dart';

class SupportAndSettingsView extends StatelessWidget {
  const SupportAndSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Add Owner/Trainer'),
      body: Center(
        child: Text(
          'Under Development',
          style: textTheme.displaySmall,
        ),
      ),
    );
  }
}
