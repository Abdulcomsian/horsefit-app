import '../../../../core/constants/exports.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Shop'),
      body: Center(
        child: Text(
          'Under Development',
          style: textTheme.displaySmall,
        ),
      ),
    );
  }
}
